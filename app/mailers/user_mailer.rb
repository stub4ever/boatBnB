class UserMailer < ApplicationMailer
  default from: 'your-email@example.com'

  layout 'mailer'

  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to BoatBnB')
    # This will render a view in `app/views/user_mailer`!
  end
end
