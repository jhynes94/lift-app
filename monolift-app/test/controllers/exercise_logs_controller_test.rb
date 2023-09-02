require "test_helper"

class ExerciseLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_log = exercise_logs(:one)
  end

  test "should get index" do
    get exercise_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_log_url
    assert_response :success
  end

  test "should create exercise_log" do
    assert_difference("ExerciseLog.count") do
      post exercise_logs_url, params: { exercise_log: { failure: @exercise_log.failure, reps: @exercise_log.reps, user_id: @exercise_log.user_id, weight: @exercise_log.weight } }
    end

    assert_redirected_to exercise_log_url(ExerciseLog.last)
  end

  test "should show exercise_log" do
    get exercise_log_url(@exercise_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_log_url(@exercise_log)
    assert_response :success
  end

  test "should update exercise_log" do
    patch exercise_log_url(@exercise_log), params: { exercise_log: { failure: @exercise_log.failure, reps: @exercise_log.reps, user_id: @exercise_log.user_id, weight: @exercise_log.weight } }
    assert_redirected_to exercise_log_url(@exercise_log)
  end

  test "should destroy exercise_log" do
    assert_difference("ExerciseLog.count", -1) do
      delete exercise_log_url(@exercise_log)
    end

    assert_redirected_to exercise_logs_url
  end
end
