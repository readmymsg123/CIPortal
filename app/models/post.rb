class Post < ActiveRecord::Base
  has_many :comments
  acts_as_taggable
  belongs_to :user
  has_attached_file :photo
  
  
  auto_html_for :message do
    html_escape
    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
end
