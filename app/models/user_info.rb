class UserInfo < ActiveRecord::Base
  attr_accessible :address, :age, :education, :name, :occupation, :phone, :pictuer, :user_id
  mount_uploader :pictuer,ImageUploader
  belongs_to :user

  #validates :age, :phone #, :numericality => true

  validates :address, :age, :education, :phone, presence: :true

end
