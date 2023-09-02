require "application_system_test_case"

class PhasesTest < ApplicationSystemTestCase
  setup do
    @phase = phases(:one)
  end

  test "visiting the index" do
    visit phases_url
    assert_selector "h1", text: "Phases"
  end

  test "should create phase" do
    visit phases_url
    click_on "New phase"

    fill_in "Duration days", with: @phase.duration_days
    fill_in "Name", with: @phase.name
    fill_in "Objective", with: @phase.objective
    fill_in "Order", with: @phase.order
    fill_in "Program", with: @phase.program_id
    fill_in "What to expect", with: @phase.what_to_expect
    click_on "Create Phase"

    assert_text "Phase was successfully created"
    click_on "Back"
  end

  test "should update Phase" do
    visit phase_url(@phase)
    click_on "Edit this phase", match: :first

    fill_in "Duration days", with: @phase.duration_days
    fill_in "Name", with: @phase.name
    fill_in "Objective", with: @phase.objective
    fill_in "Order", with: @phase.order
    fill_in "Program", with: @phase.program_id
    fill_in "What to expect", with: @phase.what_to_expect
    click_on "Update Phase"

    assert_text "Phase was successfully updated"
    click_on "Back"
  end

  test "should destroy Phase" do
    visit phase_url(@phase)
    click_on "Destroy this phase", match: :first

    assert_text "Phase was successfully destroyed"
  end
end
