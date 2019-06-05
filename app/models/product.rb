class Product < ApplicationRecord
  has_one :image
  belongs_to :user, optional: true
  has_many :evaluations
  # has_ancestry
  accepts_nested_attributes_for :image
  scope :get_categroy, -> (category) { where("category = ?",(category)).limit(4).order(:created_at) }
end
