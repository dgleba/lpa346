class SurveysController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def edit
  end

  def update
    @survey = @user.surveys.find(params[:id])
    if @survey.update(survey_params)
      redirect_to @survey, notice: "Edit successful"
    else
      render :edit
    end
  end

  def new
    @survey = Survey.new
    @survey.questions.build
  end

  def create
    @survey = current_user.surveys.build(survey_params)
    if @survey.save
      redirect_to @survey, notice: "Successfully created"
    else
      render :new
    end
  end

  def destroy
    @survey = Survey.find(params[:id]).destroy
    redirect_to surveys_path, notice: "successfully deleted"
  end

  private

  def survey_params
    params.require(:survey).permit(:title, questions_attributes: [:id, :title, :qtype, :question_note])
  end
end
