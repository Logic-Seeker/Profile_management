class UserInfo < ActiveRecord::Base
  attr_accessible :address, :age, :education, :name, :occupation, :phone, :pictuer, :user_id
  mount_uploader :pictuer,ImageUploader
  belongs_to :user

  #validates :age, :phone #, :numericality => true
	
  validates :name,:occupation,:education, :phone,:address,:pictuer, :presence => true
	validates_numericality_of :age, :only_integer => true,:less_than_or_equal_to => 100, :allow_blank => true
end
