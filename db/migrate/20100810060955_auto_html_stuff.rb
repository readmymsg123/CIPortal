class AutoHtmlStuff < ActiveRecord::Migration
  def self.up
    add_column :posts, :message_html, :string
  end

  def self.down
    remove_column :posts, :column_name
  end
end