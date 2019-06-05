class AddReviewidToProductId < ActiveRecord::Migration[5.2]
  def change
    add_reference :evaluations, :product, foreign_key: true
  end
end
