class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.integer    :postalcode,       null: false
      t.string     :prefectures,      null: false
      t.string     :city,             null: false
      t.string     :address,          null: false
      t.string     :buildingname
      t.integer    :tell,             null: false
      t.references :user,             foreign_key:true
      t.timestamps
    end
  end
end
