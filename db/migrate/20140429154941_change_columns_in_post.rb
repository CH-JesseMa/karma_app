class ChangeColumnsInPost < ActiveRecord::Migration
  def change
  	rename_column :posts, :status, :is_open
  	rename_column :posts, :type, :post_type
  end
end
