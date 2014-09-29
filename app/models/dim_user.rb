class DimUser < ActiveRecord::Base
  establish_connection "other_db".to_sym
  # after_initialize :readonly!
  self.table_name = 'DimUser'
  self.primary_key = 'dwidUser'

  def account_dim_users
    AccountDimUser.where(dwidUser: self.dwidUser)
  end

  def accounts
    account_dim_users.map {|account_dim_user| Account.find(account_dim_user.account_id) }
  end
end
