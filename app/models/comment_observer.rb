class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts "We will notify #{comment.article.user.email} in Chapter 9"
  end
end
