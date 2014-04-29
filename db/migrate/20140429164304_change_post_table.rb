class ChangePostTable < ActiveRecord::Migration
  def change
    remove_column :posts, :is_open, :boolean
    add_column :posts, :is_open, :boolean, :default => true
  end
end
