class AddColumnToTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :post_id, :integer
  end
end
