require "test_helper"

class AttendanceMailerTest < ActionMailer::TestCase
  test "event_participation" do
    mail = AttendanceMailer.event_participation
    assert_equal "Event participation", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
