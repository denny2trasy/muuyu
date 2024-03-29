class Attachment < ActiveRecord::Base
  belongs_to  :owner, :polymorphic => true
  scope :of_type, lambda {|type|
    {:conditions => "a_type = '#{type}'"}
    }
    
  has_attached_file :data,
          :url  => "/system/attachments/:id/:style/:basename.:extension",
          :path => ":rails_root/public/system/attachments/:id/:style/:basename.:extension"

    validates_attachment_presence :data
    validates_attachment_size :data, :less_than => 10.megabytes
    validates_attachment_content_type :data, :content_type => ['image/jpeg',
                                                              'image/png',
                                                              'image/gif',
                                                              'application/pdf',
                                                              'application/msword',
                                                              'application/vnd.ms-excel']

    # validate :prohibited_ext
  
  

  protected
    def prohibited_ext
      if not self.data.blank?
        if self.data.original_filename.match(/^.*\.(exe|bat|ceo|pif|scr|js|ws|cpl|hta|rar|vbs|bhx|hqx|mim|com|uu|uue|xxe|ini|pl)$/)
          errors.add(:data, "File Format is not Supported.")
        end
      end
    end
  
end
