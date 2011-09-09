class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name,:last_name, :login,:address, :phone
  attr_accessible :yoga_style,:difficult_level,:preference
  attr_accessible :about_me,:primary_location,  :travelling_location,:photo
  
  has_many  :attachments, :as => :owner,  :dependent => :destroy 
  
  def photo_attachment
    self.attachments.first(:conditions => {:a_type=>"photo"})
  end
  
end
