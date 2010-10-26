class TagsController < ApplicationController
  def index
    @tags = Tag.find(:all)
    @a = Array.new
    @tags.each do |tag|
      @posts = Post.find_tagged_with(tag)
      @a << @posts.count
    end
  end

  def show
     @tag = Tag.find(params[:id])
      @posts = Post.find_tagged_with(@tag)
      
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @post }
      end
  end
  
 
  
end
