class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :id
      t.string :title
      t.string :message
      t.string :author
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
