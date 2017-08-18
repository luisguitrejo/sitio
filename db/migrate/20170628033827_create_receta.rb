class CreateReceta < ActiveRecord::Migration[5.1]
  def change
    create_table :receta do |t|
      t.string :nombre
      t.string :foto
      t.text :ingredientes
      t.text :procedimiento

      t.timestamps
    end
  end
end
