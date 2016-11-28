class UserMailer < ApplicationMailer
 
 def welcome_email(user)
    @user = user
    @url  = 'http://handbo.de/login'
    mail(to: @user.email, subject: 'Welcome to Our Awesome Site')
 end

end
