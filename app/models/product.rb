class Product < ApplicationRecord
  has_one :image, dependent: :destroy
  belongs_to :user, optional: true
  has_many :evaluations, dependent: :destroy
  # has_ancestry
  accepts_nested_attributes_for :image
  scope :get_categroy, -> (category) { where("category = ?",(category)).limit(4).order(:created_at) }
end
