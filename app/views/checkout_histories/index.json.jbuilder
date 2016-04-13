json.array!(@checkout_histories) do |checkout_history|
  json.extract! checkout_history, :id, :email, :ISBN, :checkout_timestamp, :due_date, :return_date
  json.url checkout_history_url(checkout_history, format: :json)
end
