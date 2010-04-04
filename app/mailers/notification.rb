class Notification < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.actionmailer.notification.email_friend.subject
  #
  def email_friend
    @greeting = "Hi"

    mail :to => "rbarazi@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.actionmailer.notification.comment_added.subject
  #
  def comment_added(article)
    @article = article

    mail :to => article.user.email, :subject => "New comment added to #{article.title}"
  end
end
