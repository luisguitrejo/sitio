json.extract! tienda_comida, :id, :nombre, :foto, :descripcion, :ubicacion, :created_at, :updated_at
json.url tienda_comida_url(tienda_comida, format: :json)
