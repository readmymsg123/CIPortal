class ForumController < ApplicationController

  def index 
    @posts = Post.paginate :all, :page => params[:page], :order => 'created_at DESC', :per_page => 8 
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
end
