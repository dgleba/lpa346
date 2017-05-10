class QuestionListsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_question_list, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :question_list

  # GET /question_lists
  def index
    @q = @question_lists.search params[:q]
    @question_lists = @q.result.page(params[:page])
  end

  # GET /question_lists/1
  def show
  end

  # GET /question_lists/new
  def new
  end

  # GET /question_lists/1/edit
  def edit
  end

  # POST /question_lists
  def create
    respond_to do |format|
      if @question_list.save
        format.html { redirect_to @question_list, notice: t('success_create') }
        format.json { render :show, status: :created, location: @question_list }
      else
        format.html { render :new }
        format.json { render json: @question_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_lists/1
  def update
    respond_to do |format|
      if @question_list.update(question_list_params)
        format.html { redirect_to @question_list, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @question_list }
      else
        format.html { render :edit }
        format.json { render json: @question_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_lists/1
  def destroy
    @question_list.destroy
    respond_to do |format|
      format.html { redirect_to question_lists_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def question_list_params
    params.require(:question_list).permit(:name, :sort, :active_status)
  end
end
