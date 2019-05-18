class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string     :name,               null: false, index: true
      t.integer    :price,              null: false, index: true
      t.string     :description,        null: false, index: true
      t.string     :size
      t.string     :brand
      t.string     :exhibitor,          null: false
      t.string     :state,              null: false
      t.string     :category,           null: false
      t.integer    :delivery_fee,       null: false
      t.string     :shipping_method,    null: false
      t.string     :estimated_shipping, null: false
      t.references :user,               foreign_key: true
      t.string     :transaction_status, null: false
      t.string     :buyer
      t.integer    :nice
      t.timestamps
    end
  end
end
