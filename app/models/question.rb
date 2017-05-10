class Question < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :answers

  belongs_to :question_list
 
  def name
    # show name in rails_admin association.
    "#{question_list.name}"
  end
 
  def to_s
    # show columns contents, not record object like:  #<Vehicle:0x007f343b3f2890> 2016-06-08  Details Edit  Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{question_list.name}"
  end

  # Enum for question types..
  QUESTION_TYPES = [:short_answer, :select_yes_no, :select_part_number, :select_process_step ]
  enum qtype: QUESTION_TYPES
  validates :qtype, inclusion: {in: qtypes.keys }


end
