class Product < ApplicationRecord
  has_many :images
  belongs_to :user
  has_ancestry
end
