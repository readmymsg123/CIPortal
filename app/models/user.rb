class User < ActiveRecord::Base
  acts_as_authentic
  acts_as_authorization_subject  :association_name => :roles
  has_private_messages 
  
end
