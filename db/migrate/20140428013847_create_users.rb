class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :location
      t.integer :points
      t.boolean :admin, :default => false
      t.string :password_digest
      t.timestamps
    end
  end
end

# user:
# has_many: posts

# username:string
# password:string (bcrypt)
# email:string
# location:string (city,state)
# karma_points: integer
# is_admin?: boolean
# profile: string (image_url)
# skills: text
# timestamps
