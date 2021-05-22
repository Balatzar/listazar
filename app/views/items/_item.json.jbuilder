json.extract! item, :id, :list_id, :name, :done, :reactivation_delay_days, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
