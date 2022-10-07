json.extract! simplo_message, :id, :status_code, :message, :created_at, :updated_at
json.url simplo_message_url(simplo_message, format: :json)
