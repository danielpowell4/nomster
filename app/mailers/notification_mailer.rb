class NotificationMailer < ApplicationMailer
  default from: 'comment-bot@nomsterapp.com'
  @user = user
  def comment_added
    mail(to: "ken@thefirehoseproject.com",
        subject: "A comment has been added to your place")
  end
end
