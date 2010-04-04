class Notification < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.actionmailer.notification.email_friend.subject
  #
  def email_friend(article, sender_name, receiver_email)
    @article = article
    @sender_name = sender_name
    
    attachments["rails.png"] = File.read(Rails.root.join("public/images/rails.png"))

    mail :to => receiver_email
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
