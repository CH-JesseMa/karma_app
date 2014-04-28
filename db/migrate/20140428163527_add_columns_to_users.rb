class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :location, :string
  	add_column :users, :karma_points, :integer
  	add_column :users, :is_admin, :boolean
  	add_column :users, :profile, :string
  	add_column :users, :image_url, :string
  	add_column :users, :skills, :string
  end
end
