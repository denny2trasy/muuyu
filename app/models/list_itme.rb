class ListItme < ActiveRecord::Base
  scope :list_of_type,  lambda {|type|
    {:conditions => "list_type = '#{type}'"}
  }
end
