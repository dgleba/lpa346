class Question < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :answers

  # Enum for question types..
  QUESTION_TYPES = [:short_answer, :select_yes_no, :select_part_number, :select_process_step ]
  enum qtype: QUESTION_TYPES
  validates :qtype, inclusion: {in: qtypes.keys }


end
