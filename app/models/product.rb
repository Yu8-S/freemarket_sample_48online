class Product < ApplicationRecord
  has_many :images
  belongs_to :user, optional: true
  has_ancestry
end
