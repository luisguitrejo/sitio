class CreateTiendaArtesania < ActiveRecord::Migration[5.1]
  def change
    create_table :tienda_artesania do |t|
      t.string :nombre
      t.string :foto
      t.text :descripcion
      t.text :ubicacion

      t.timestamps
    end
  end
end
