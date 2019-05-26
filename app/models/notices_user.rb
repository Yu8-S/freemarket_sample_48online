class NoticesUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :notice, optional: true
end
