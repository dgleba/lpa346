class AnswersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_pfeature, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  def index
    # @questions = Question.all(:order => 'sort')
    # @questions = Question.all
    @q = @answers.search params[:q]
    @answers = @q.result.page(params[:page])
  end


  def create
    survey = Survey.find(params[:survey_id])
    # created_at will be set to the same time for all answers being written to the db here
    # so that the created_at represents a response id for this set of answers for this survey by this user
    # at this time...
    response_at_1=Time.now - 120 # subtract 120 seconds from the time to show that this time was intentionally set 
                                 #   - this will be 2 minutes less than updated_at.
    puts "-------->>>>> response_at_1 will be saved to the db _____!_____ : " + response_at_1.inspect
    
    if survey
      params[:answers].each_pair do |question_id, answer|
        question = survey.questions.find(question_id)
        if question.present? && question.qtype == "short_answer"
          question.answers.create({body: answer, user: current_user, survey: survey})
        elsif question.present? && question.qtype == "select_part_number"
          question.answers.create({body: answer, user: current_user, survey: survey})
        elsif question.present? && question.qtype == "select_process_step"
          question.answers.create({body: answer, user: current_user, survey: survey})
        elsif question.present? && question.qtype == "select_yes_no"
          question.answers.create({
            # body: answer.to_json,
            body: answer["yes_no"],
            issue_description: answer["issue_description"],
            action_taken: answer["action_taken"],
            created_at: response_at_1,
            user: current_user, survey: survey
          })
        end
      end
    end
    redirect_to surveys_path
  end
end

#params
# { answers: { 1: "this looks good" } }
# { answers: { QUESTION_ID: { yes_no: "Yes", issue_description: "text", action_taken: "text" } } }
