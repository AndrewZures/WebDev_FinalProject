class UserMailer < ActionMailer::Base
  default from: "andrew.zures@gmail.com"


  def welcome_email(user)
  		@user = user
  		@url = "http://justlikepinterest.herokuapp.com"

  		mail(:to => @user.email, 
  			:subject => "Welcome to My Awesome Site!") do |format|
  				format.html
  				format.text
  			end
  	end
end
