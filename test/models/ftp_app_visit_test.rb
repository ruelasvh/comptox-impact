require 'test_helper'

class FtpAppVisitTest < ActiveSupport::TestCase
  fixtures :ftp_app_visits

  test "visit attributes must not be empty" do
    visit = FtpAppVisit.new
    assert_not visit.save, "Saved the visit with out attributes"
  end
end
