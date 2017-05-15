class QuestionsController < ApplicationController

before_filter :authenticate_user!
  # before_action :set_pfeature, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  def index
    # @questions = Question.all(:order => 'sort')
    # @questions = Question.all
    @q = @questions.search params[:q]
    @questions = @q.result.page(params[:page])
  end

  def new
      @survey = Survey.find(params[:survey_id])
      @question = @survey.questions.build
    end

  # GET /questions/1/edit
  def edit
  end


    def create
      @survey = Survey.find(params[:survey_id])
      @question = Question.new(question_params)

      if @survey.save
        redirect_to @survey, notice: "Successfully created"
      else
        render :new
      end
    end

  # PATCH/PUT /questions/1
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
    
    private

    def question_params
      params.require(:question).permit(:title, :question_list_id, :survey_id, :user_id)
    end

end
