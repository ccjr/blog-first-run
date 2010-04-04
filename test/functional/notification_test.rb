require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "email_friend" do
    @expected.subject = "Email friend"
    @expected.to      = "to@example.org"
    @expected.from    = "from@example.com"
    @expected.body    = read_fixture("email_friend")
    @expected.date    = Time.now

    assert_equal @expected, Notification.email_friend
  end

  test "comment_added" do
    @expected.subject = "Comment added"
    @expected.to      = "to@example.org"
    @expected.from    = "from@example.com"
    @expected.body    = read_fixture("comment_added")
    @expected.date    = Time.now

    assert_equal @expected, Notification.comment_added
  end

end
