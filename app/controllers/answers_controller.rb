class AnswersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_pfeature, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  def create
    survey = Survey.find(params[:survey_id])
    if survey
      params[:answers].each_pair do |question_id, answer|
        question = survey.questions.find(question_id)
        if question.present? && question.qtype == "short_answer"
          question.answers.create({body: answer, user: current_user, survey: survey})
        elsif question.present? && question.qtype == "select_part_number"
          question.answers.create({body: answer, user: current_user, survey: survey})
        elsif question.present? && question.qtype == "select_yes_no"
          question.answers.create({
            # body: answer.to_json,
            body: answer["yes_no"],
            issue_description: answer["issue_description"],
            action_taken: answer["action_taken"],
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
