class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.integer :requester_id
    	t.integer :servicer_id
    	t.boolean :requester_agree
    	t.boolean :servicer_agree
    	t.boolean :requester_complete
    	t.boolean :servicer_complete
    	t.boolean :is_completed, default: false
    	t.integer :point_value
    	t.timestamps
    end
  end
end
