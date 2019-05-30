class Product < ApplicationRecord
  has_many :images
  belongs_to :user, optional: true
  has_ancestry

  scope :get_categroy, -> (category) { where("category = ?",(category)).limit(4).order(:created_at) }
end
