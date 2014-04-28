class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer :karma_value
    	t.boolean :status
    	t.string :type
    	t.string :title
    	t.string :content
    	t.string :image_url
    	t.timestamps
    end
  end
end
