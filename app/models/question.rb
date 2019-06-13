class Question < ApplicationRecord
  belongs_to :survey, optional: true
  
  # I turned this off after we lost all the answers, questions, and / for the basic survey. 2018-02-06 David Gleba
  # has_many :answers, dependent: :destroy
  has_many :answers

  belongs_to :question_list
  validates :question_list, presence: true

  validates :question_note, presence: true
  
  default_scope { order(sort: :asc) }

  def question_name2
      "#{question_list.name} " "#{question_list.id}"
  end

   def name
    # prevent nilclass error..
    #if question_list&.id.present?  # Notice the & lonely operator.  2017-05-16 kwruby Josh Teeter, Andrew Sullivan, and ? I don't know his name.
    if question_list  #&.id.present? 
     "#{question_list.id} ~ #{question_list.name}"
    elsif
      "mt"
    end
   end

  def offline_name2
    unless question_list.id.nil? ||  "Mt"
       @question_list.to_json
    end
  end

  def offline_title_1
    unless question_list.id.nil? ||  "Mt"
       "#{question_list.id} - #{question_list.name}"
    end
  end


  def offline_name_offline
    # show name in rails_admin association.
    # if question_list.name.present?
      # question_list.name unless question_list.blank?
    # end
    id
  end

  def to_s
    # show columns contents, not record object like:  #<Vehicle:0x007f343b3f2890> 2016-06-08  Details Edit  Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    # 21  "Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    unless question_list  ||  "Mt"
       "#{question_list.id} -- #{question_list.name}"
    end
  end


  # Enum for question types..
  QUESTION_TYPES = [:short_answer, :select_yes_no, :select_part_number, :select_process_step ]
  enum qtype: QUESTION_TYPES
  validates :qtype, inclusion: {in: qtypes.keys }


end
