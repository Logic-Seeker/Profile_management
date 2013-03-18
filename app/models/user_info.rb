class UserInfo < ActiveRecord::Base
  attr_accessible :address, :age, :education, :name, :occupation, :phone, :pictuer
end
