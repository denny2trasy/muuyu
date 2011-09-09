class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name,:last_name, :login,:address,:phone  
  attr_accessible :yoga_style,:weblink,:short_bio,:philosophy,:photo
  attr_accessible :nationality,:organizations,:organization_other,:availability,:travel_expenses
  attr_accessible :organizate_alliance, :organizate_wheel, :organizate_kundalini, :organizate_other
  
  has_many  :attachments, :as => :owner,  :dependent => :destroy
  
end
