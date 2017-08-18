class AddEstadoToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :estado, :string
  end
end
