class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

	before_save { self.email = email.downcase }
	before_create :create_remember_token
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
					  uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    Micropost.from_users_followed_by(self)
  end

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  def graph_fat_pct
    metrics = FitnessMetric.where(clientID:id)
    #referring to individual metrics in the collection of Ruby objects
    metrics.map.with_index do |metric,index| 
      {x:index, y:metric.fatPercent}
  end.to_json
        #treat this as json
      #[
        #{x:metr.metricsDate},
        #{y:FitnessMetric.where(clientID:id).fatPercent}
      #].to_json
  #need to convert data from Ruby to Json
  #when pulling data from database
  end
  
  def graph_height
    metrics2 = FitnessMetric.where(clientID:id)
    #referring to individual metrics in the collection of Ruby objects
    metrics2.map.with_index do |metric2,index| 
      {x:index, y:metric2.height}
  end.to_json
    
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
