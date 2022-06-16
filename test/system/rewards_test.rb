require "application_system_test_case"

class RewardsTest < ApplicationSystemTestCase
  setup do
    @reward = rewards(:one)
  end

  test "visiting the index" do
    visit rewards_url
    assert_selector "h1", text: "Rewards"
  end

  test "should create reward" do
    visit rewards_url
    click_on "New reward"

    fill_in "Cost", with: @reward.cost
    fill_in "Expire at", with: @reward.expire_at
    fill_in "Minutes", with: @reward.minutes
    fill_in "Order", with: @reward.order
    fill_in "Title", with: @reward.title
    fill_in "User", with: @reward.user_id
    fill_in "Uses", with: @reward.uses
    click_on "Create Reward"

    assert_text "Reward was successfully created"
    click_on "Back"
  end

  test "should update Reward" do
    visit reward_url(@reward)
    click_on "Edit this reward", match: :first

    fill_in "Cost", with: @reward.cost
    fill_in "Expire at", with: @reward.expire_at
    fill_in "Minutes", with: @reward.minutes
    fill_in "Order", with: @reward.order
    fill_in "Title", with: @reward.title
    fill_in "User", with: @reward.user_id
    fill_in "Uses", with: @reward.uses
    click_on "Update Reward"

    assert_text "Reward was successfully updated"
    click_on "Back"
  end

  test "should destroy Reward" do
    visit reward_url(@reward)
    click_on "Destroy this reward", match: :first

    assert_text "Reward was successfully destroyed"
  end
end
