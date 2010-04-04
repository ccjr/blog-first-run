require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "email_friend" do
    @expected.subject = "Email friend"
    @expected.to      = "to@example.org"
    @expected.from    = "from@example.com"
    @expected.body    = read_fixture("email_friend")
    @expected.date    = Time.now

    assert_equal @expected, Notifier.email_friend
  end

end
