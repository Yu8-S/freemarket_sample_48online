class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string     :bank,                             null: false
      t.string     :account_type,                     null: false
      t.integer    :cranch_code,                      null: false
      t.integer    :account_number,                   null: false
      t.string     :account_holder_firstname,         null: false
      t.string     :account_holder_lastname,          null: false
      t.string     :address,                          null: false
      t.string     :name,                             null: false
      t.references :user,                             foreign_key:true
      t.timestamps
    end
  end
end
