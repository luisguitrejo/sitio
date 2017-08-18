json.extract! recetum, :id, :nombre, :foto, :ingredientes, :procedimiento, :created_at, :updated_at
json.url recetum_url(recetum, format: :json)
