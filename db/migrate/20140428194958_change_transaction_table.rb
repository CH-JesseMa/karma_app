class ChangeTransactionTable < ActiveRecord::Migration
  def change
    add_column :posts, :transaction_id, :integer
    add_column :posts, :user_id, :integer
  end
end
