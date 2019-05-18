class CreateCardnumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :cardnumbers do |t|
      t.integer    :cardnumber,                null: false
      t.integer    :expirationdate_month,      null: false
      t.integer    :expirationdate_year,       null: false
      t.integer    :securitycode,              null: false
      t.references :user,                      foreign_key:true
      t.timestamps
    end
  end
end
