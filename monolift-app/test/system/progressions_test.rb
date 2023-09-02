require "application_system_test_case"

class ProgressionsTest < ApplicationSystemTestCase
  setup do
    @progression = progressions(:one)
  end

  test "visiting the index" do
    visit progressions_url
    assert_selector "h1", text: "Progressions"
  end

  test "should create progression" do
    visit progressions_url
    click_on "New progression"

    fill_in "Exercise", with: @progression.exercise
    fill_in "Phase", with: @progression.phase
    fill_in "Program", with: @progression.program_id
    fill_in "Set", with: @progression.set
    fill_in "User", with: @progression.user_id
    fill_in "Workout", with: @progression.workout
    click_on "Create Progression"

    assert_text "Progression was successfully created"
    click_on "Back"
  end

  test "should update Progression" do
    visit progression_url(@progression)
    click_on "Edit this progression", match: :first

    fill_in "Exercise", with: @progression.exercise
    fill_in "Phase", with: @progression.phase
    fill_in "Program", with: @progression.program_id
    fill_in "Set", with: @progression.set
    fill_in "User", with: @progression.user_id
    fill_in "Workout", with: @progression.workout
    click_on "Update Progression"

    assert_text "Progression was successfully updated"
    click_on "Back"
  end

  test "should destroy Progression" do
    visit progression_url(@progression)
    click_on "Destroy this progression", match: :first

    assert_text "Progression was successfully destroyed"
  end
end
