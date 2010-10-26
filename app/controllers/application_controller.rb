# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  uses_tiny_mce :class => "mceEditor", :options => {
    :theme => 'advanced',
    :theme_advanced_resizing => true
  }
  
rescue_from 'Acl9::AccessDenied', :with => :access_denied
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  helper_method :current_user
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end    

  def access_denied
    if current_user
      flash[:notice] = 'Access denied. You are not an admin.'
    else
      flash[:notice] = 'Access denied. Login or register as a new user.'
      redirect_to login_path
    end    
  end
end
