json.extract! exercise_log, :id, :reps, :weight, :failure, :user_id, :created_at, :updated_at
json.url exercise_log_url(exercise_log, format: :json)
