require "application_system_test_case"

class ExerciseLogsTest < ApplicationSystemTestCase
  setup do
    @exercise_log = exercise_logs(:one)
  end

  test "visiting the index" do
    visit exercise_logs_url
    assert_selector "h1", text: "Exercise logs"
  end

  test "should create exercise log" do
    visit exercise_logs_url
    click_on "New exercise log"

    check "Failure" if @exercise_log.failure
    fill_in "Reps", with: @exercise_log.reps
    fill_in "User", with: @exercise_log.user_id
    fill_in "Weight", with: @exercise_log.weight
    click_on "Create Exercise log"

    assert_text "Exercise log was successfully created"
    click_on "Back"
  end

  test "should update Exercise log" do
    visit exercise_log_url(@exercise_log)
    click_on "Edit this exercise log", match: :first

    check "Failure" if @exercise_log.failure
    fill_in "Reps", with: @exercise_log.reps
    fill_in "User", with: @exercise_log.user_id
    fill_in "Weight", with: @exercise_log.weight
    click_on "Update Exercise log"

    assert_text "Exercise log was successfully updated"
    click_on "Back"
  end

  test "should destroy Exercise log" do
    visit exercise_log_url(@exercise_log)
    click_on "Destroy this exercise log", match: :first

    assert_text "Exercise log was successfully destroyed"
  end
end
