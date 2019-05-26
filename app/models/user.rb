class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, presence: true
  # validates :encrypted_password, presence: true,
  #           # format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i,
  #                     message: "半角英数字をそれぞれ含む8文字〜100文字です" }

  # # devise :omniauthable, omniauth_providers: %i[facebook google_oauth2]
  # # def self.from_omniauth(auth)
  # #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  # #     user.email = auth.info.email
  # #     user.password = Devise.friendly_token[0,20]
  # #   end
  # # end

  has_many :products
  has_many :evaluations
  has_many :notices_users
  has_many :notices, through: :notices_users
  belongs_to :locals, optional: true
  belongs_to :cardnumber, optional: true
  belongs_to :account, optional: true
  belongs_to :profile, optional: true
end
