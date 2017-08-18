class CreateArtesania < ActiveRecord::Migration[5.1]
  def change
    create_table :artesania do |t|
      t.string :foto
      t.string :descripcion
      t.decimal :precio

      t.timestamps
    end
  end
end
