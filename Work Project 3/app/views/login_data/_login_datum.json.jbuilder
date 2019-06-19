json.extract! login_datum, :id, :username, :created_at, :updated_at
json.url login_datum_url(login_datum, format: :json)
