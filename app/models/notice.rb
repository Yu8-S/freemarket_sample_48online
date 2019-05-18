class Notice < ApplicationRecord
  has_many :notices_users
  has_many :users, through: :notices_users
end
