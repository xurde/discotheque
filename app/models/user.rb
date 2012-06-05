class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable, :rememberable, :encryptable
         #:recoverable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name, :remember_me
  
  # Validations
  validates_presence_of :email, :name
  validates_uniqueness_of :email, :on => :create, :message => "is already taken", :case_sensitive => false
  validates_presence_of :email, :if => :password_present?
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password_present?
  validates_length_of :password, :within => 5..15, :message => "must be between 5 and 15 chars long", :if => :password_present?
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  has_many :albums
  
  
  private
  
  def password_present?
    !password.nil?
  end
  
end
