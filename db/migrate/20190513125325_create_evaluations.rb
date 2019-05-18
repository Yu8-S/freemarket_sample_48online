class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string     :evaluation,       null: false
      t.string     :comment
      t.references :user,             foreign_key: true
      t.timestamps
    end
  end
end
