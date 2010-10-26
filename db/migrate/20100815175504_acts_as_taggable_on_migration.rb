class ActsAsTaggableOnMigration < ActiveRecord::Migration

  def self.up
     # this has been modified to upgrade the tables previously created by acts_as_taggable_on_steroids

     # get rid of the old table index in the taggings table
     remove_index :taggings, [:taggable_id,:taggable_type]

     # these are the three new columns necessary for the new plugin to work
     add_column :taggings, :tagger_id, :integer
     add_column :taggings, :tagger_type, :string
     add_column :taggings, :context, :string

     # these are the two new indexes necessary for the new plugin to work
     add_index :taggings, :tag_id
     add_index :taggings, [:taggable_id, :taggable_type, :context]
   end

   def self.down
     drop_table :taggings
     drop_table :tags
   end

   
end
