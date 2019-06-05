class ChangeColumnEvaluation < ActiveRecord::Migration[5.2]
  def change
    change_column :evaluations, :evaluation, :string, null: true
  end
end
