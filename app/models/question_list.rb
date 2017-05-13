class QuestionList < ApplicationRecord

  def question_list_name2
    "##{id}:. #{name}"
  end

  def title
    "##{id}:; #{name}"
  end

# this will lead to a loop of some sort.
# console..
# app/models/question_list.rb:12:in `name'
# app/models/question_list.rb:12:in `name'
#
#   def name
#     "##{id}:; #{name}"
#   end

  def to_s
    # show columns contents, not record object like:  #<Vehicle:0x007f343b3f2890> 2016-06-08  Details Edit  Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "##{id}:: #{name}"
  end


end
