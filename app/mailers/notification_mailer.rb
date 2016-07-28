class NotificationMailer < ApplicationMailer
  default from: 'comment-bot@nomsterapp.com'

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
         subject: "A comment has been added to #{@place.name}")
  end
end
