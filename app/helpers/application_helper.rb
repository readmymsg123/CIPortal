# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include TagsHelper
  
  def tag_cloud 
    @tags = Post.tag_counts
  end
  
  
end
