json.extract! task, :id, :title, :value, :type, :order, :completed_at, :minutes_to_complete, :completed_count, :created_at, :updated_at
json.url task_url(task, format: :json)
