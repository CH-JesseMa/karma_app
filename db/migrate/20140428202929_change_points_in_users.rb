class ChangePointsInUsers < ActiveRecord::Migration
  def up
    add_column :users, :points, :integer, :default => 10
  end

  def down
    remove_column :users, :karma_points
  end
end
