class User < ApplicationRecord
  validates :email, presence: true
  validates :encrypted_password, presence: true,
            format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i,
                      message: "半角英数字をそれぞれ含む8文字〜100文字です" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
