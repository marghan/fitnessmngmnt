namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_fitness_metrics
  end
end

def make_users
  admin = User.create!(name:     "admin user",
                       email:    "admin@test.com",
                       password: "Password",
                       password_confirmation: "Password",
                       admin: true)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "Password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end
#def make_fitness_metrics
#admin = Fitness_metric.create!(metricsID: "1",
#                       clientID: "1", 
#                       exerciseID:   "1", 
#                       weight:  "200", 
#                       age:  "50", 
#                       height:  "164", 
#                       sex:  "M", 
#                       metricsDate: DateTime.parse("05/14/2014 8:00") ,
#                       fatPercent:  "30")
#end 
