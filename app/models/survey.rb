class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy

  accepts_nested_attributes_for :questions, reject_if: :all_blank
  
  
  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08
    "#{title}, Id:#{id}"
  end

end
