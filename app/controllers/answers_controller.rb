class AnswersController < ApplicationController
  def create
    survey = Survey.find(params[:survey_id])
    if survey
      params[:answers].each_pair do |question_id, answer|
        question = survey.questions.find(question_id)
        if question.present? && question.qtype == "short_answer"
          question.answers.create({body: answer, user: current_user})
        elsif question.present? && question.qtype == "multiple_choice"
          question.answers.create({
            body: answer.to_json,
            issue_description: answer["issue_description"],
            action_taken: answer["action_taken"],
            user: current_user
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
