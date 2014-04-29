class ChangeTransactionsTable < ActiveRecord::Migration
  def change
    add_column :transactions, :is_complete, :boolean, :default => "false"
  end
end
