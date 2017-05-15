class AnswersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_answer, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :answer

  # GET /answers
  def index
    @q = @answers.search params[:q]
    @answers = @q.result.page(params[:page])
  end

  # GET /answers/1
  def show
  end

  # GET /answers/new
  def new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  def create
    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id, :issue_description, :action_taken)
  end
end
