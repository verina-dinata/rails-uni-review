class UserSignUpMailer < ApplicationMailer
  default :from => 'support@u-review.co'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Confirm Your U-Review Account Email Address' )
  end
end
