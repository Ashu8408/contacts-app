json.extract! contacts_db, :id, :name, :email, :phone, :linkedin, :created_at, :updated_at
json.url contacts_db_url(contacts_db, format: :json)
