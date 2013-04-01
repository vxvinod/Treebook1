class Status < ActiveRecord::Base
  
  attr_accessible :content , :user_id 
  
  belongs_to :user, :foreign_key=> :user_id


end
