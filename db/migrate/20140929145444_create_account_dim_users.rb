class CreateAccountDimUsers < ActiveRecord::Migration
  def change
    create_table :account_dim_users do |t|
      t.integer :dwidUser
      t.integer :account_id

      t.timestamps
    end
  end
end
