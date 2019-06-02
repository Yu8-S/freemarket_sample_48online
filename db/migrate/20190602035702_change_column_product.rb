class ChangeColumnProduct < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :shipping_method, :string, null: true
  end
end
