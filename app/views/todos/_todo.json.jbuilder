json.extract! todo, :id, :name, :notes, :minutes, :created_at, :updated_at
json.url todo_url(todo, format: :json)
