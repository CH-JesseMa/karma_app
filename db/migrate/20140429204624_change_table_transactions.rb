class ChangeTableTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions,  :is_completed
  end
end
