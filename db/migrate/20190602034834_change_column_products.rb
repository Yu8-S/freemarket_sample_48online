class ChangeColumnProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :exhibitor, :string, null: true
    change_column :products, :delivery_fee, :integer, null: true
    change_column :products, :exhibitor, :string, null: true
    change_column :products, :estimated_shipping, :string, null: true
    change_column :products, :transaction_status, :string, null: true
    change_column :products, :shipping_method, :string, null: true
  end
end
