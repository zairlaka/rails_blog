class UserMailer < ApplicationMailer
default from: 'hitachi.xoxoxo@gmail.com'

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Please confirm Your registration ")
  end 

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to RailsBlog first app')
  end
end

