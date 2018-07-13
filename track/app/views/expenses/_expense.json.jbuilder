json.extract! expense, :id, :userID, :categoryID, :sum, :date, :created_at, :updated_at
json.url expense_url(expense, format: :json)
