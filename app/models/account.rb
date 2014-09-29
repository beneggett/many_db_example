class Account < ActiveRecord::Base
  has_many :account_dim_users

  def dim_users
    account_dim_users.map {|account_dim_user| DimUser.find_by(dwidUser: account_dim_user.dwidUser) }
  end
end
