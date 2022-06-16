require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "should create task" do
    visit tasks_url
    click_on "New task"

    fill_in "Completed at", with: @task.completed_at
    fill_in "Completed count", with: @task.completed_count
    fill_in "Minutes to complete", with: @task.minutes_to_complete
    fill_in "Order", with: @task.order
    fill_in "Title", with: @task.title
    fill_in "Type", with: @task.type
    fill_in "Value", with: @task.value
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit task_url(@task)
    click_on "Edit this task", match: :first

    fill_in "Completed at", with: @task.completed_at
    fill_in "Completed count", with: @task.completed_count
    fill_in "Minutes to complete", with: @task.minutes_to_complete
    fill_in "Order", with: @task.order
    fill_in "Title", with: @task.title
    fill_in "Type", with: @task.type
    fill_in "Value", with: @task.value
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "should destroy Task" do
    visit task_url(@task)
    click_on "Destroy this task", match: :first

    assert_text "Task was successfully destroyed"
  end
end
