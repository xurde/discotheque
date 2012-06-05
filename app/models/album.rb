class Album < ActiveRecord::Base
  
  belongs_to :user
  
  validates_presence_of :user, :band, :title, :cover
  validates_associated :user, :on => :create, :message => "invalid user"
  validates_length_of :band, :minimum => 3, :on => :create, :message => "name too small"
  
  has_attached_file :cover, :styles => {
                                        :medium => "400x400#",
                                        :small => "100x100#",
                                        :thumb => "50x50#"
                                       }

end
