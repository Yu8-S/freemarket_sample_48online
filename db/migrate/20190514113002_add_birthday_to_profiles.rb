class AddBirthdayToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birthday_year, :integer
    add_column :profiles, :birthday_month, :integer
    add_column :profiles, :birthday_day, :integer
  end
end
