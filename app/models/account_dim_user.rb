class AccountDimUser < ActiveRecord::Base
  has_many :accounts
  has_many :dim_users, primary_key: :dwidUser, foreign_key: :dwidUser

end
