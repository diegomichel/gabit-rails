require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "completed_today?" do
    task = Task.new(completed_at: Time.zone.now, user_id: 1)

    assert task.completed_today?
  end
end
