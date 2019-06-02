class AddColumnProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :exhibitor, :string
  end
end
