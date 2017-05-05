class Question < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :answers

  # Enum for question types..
  QUESTION_TYPES = [:short_answer, :multiple_choice, :select_part_number]
  enum qtype: QUESTION_TYPES
  validates :qtype, inclusion: {in: qtypes.keys }


end
