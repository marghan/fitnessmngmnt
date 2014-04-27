module SessionsHelper
# create a new token, place raw token in browser cookies,
#save the hashed token to the database, set current user
#equal to the given user
  def sign_in(user)
    remember_token = User.new_remember_token
    #cookies utility allows for manipulation of cookies as if they were hashes
    #permanent: expiration 20 years from now
    cookies.permanent[:remember_token] = remember_token
    #update_attribute allows us to update a single attribute
    #while bypassing the validations (no user password or confirmation)
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  #current_user method, with user to be signed in as an argument
   def current_user=(user)
    @current_user = user
  end

  def current_user
  	#make sure session last when user go to next page
  	#need to form the hash digest using the token from the cookie
  		#before using it to find the user in the database
    remember_token = User.digest(cookies[:remember_token])
   #calls the find_by method the first time current_user is called, 
   #but on subsequent invocations returns @current_user without hitting the database
   # ||=   (or equals)
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
  
  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.digest(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end


end