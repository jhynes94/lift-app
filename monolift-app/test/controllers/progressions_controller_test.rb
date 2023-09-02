require "test_helper"

class ProgressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progression = progressions(:one)
  end

  test "should get index" do
    get progressions_url
    assert_response :success
  end

  test "should get new" do
    get new_progression_url
    assert_response :success
  end

  test "should create progression" do
    assert_difference("Progression.count") do
      post progressions_url, params: { progression: { exercise: @progression.exercise, phase: @progression.phase, program_id: @progression.program_id, set: @progression.set, user_id: @progression.user_id, workout: @progression.workout } }
    end

    assert_redirected_to progression_url(Progression.last)
  end

  test "should show progression" do
    get progression_url(@progression)
    assert_response :success
  end

  test "should get edit" do
    get edit_progression_url(@progression)
    assert_response :success
  end

  test "should update progression" do
    patch progression_url(@progression), params: { progression: { exercise: @progression.exercise, phase: @progression.phase, program_id: @progression.program_id, set: @progression.set, user_id: @progression.user_id, workout: @progression.workout } }
    assert_redirected_to progression_url(@progression)
  end

  test "should destroy progression" do
    assert_difference("Progression.count", -1) do
      delete progression_url(@progression)
    end

    assert_redirected_to progressions_url
  end
end
