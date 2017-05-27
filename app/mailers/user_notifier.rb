class UserNotifier < ActionMailer::Base
  default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that contains the user's email address
  def send_contact_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for sending an inquiry.' )
  end
end