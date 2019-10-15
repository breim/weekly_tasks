# frozen_string_literal: true

json.extract! week, :id, :name, :user_id, :created_at, :updated_at
json.url week_url(week, format: :json)
