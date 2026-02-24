class UserMailer < ApplicationMailer
  default from: ENV["GMAIL_USERNAME"] || 'noreply@eventbrite.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue sur Eventbrite!')
  end
end
