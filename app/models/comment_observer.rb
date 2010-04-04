class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    Notification.comment_added(comment.article).deliver
  end
end
