class ProcessStepsController < ApplicationController
  before_action :set_process_step, only: [:show, :edit, :update, :destroy]

  # GET /process_steps
  # GET /process_steps.json
  def index
    @process_steps = ProcessStep.all
  end

  # GET /process_steps/1
  # GET /process_steps/1.json
  def show
  end

  # GET /process_steps/new
  def new
    @process_step = ProcessStep.new
  end

  # GET /process_steps/1/edit
  def edit
  end

  # POST /process_steps
  # POST /process_steps.json
  def create
    @process_step = ProcessStep.new(process_step_params)

    respond_to do |format|
      if @process_step.save
        format.html { redirect_to @process_step, notice: 'Process step was successfully created.' }
        format.json { render :show, status: :created, location: @process_step }
      else
        format.html { render :new }
        format.json { render json: @process_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_steps/1
  # PATCH/PUT /process_steps/1.json
  def update
    respond_to do |format|
      if @process_step.update(process_step_params)
        format.html { redirect_to @process_step, notice: 'Process step was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_step }
      else
        format.html { render :edit }
        format.json { render json: @process_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_steps/1
  # DELETE /process_steps/1.json
  def destroy
    @process_step.destroy
    respond_to do |format|
      format.html { redirect_to process_steps_url, notice: 'Process step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_step
      @process_step = ProcessStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_step_params
      params.require(:process_step).permit(:name, :sort, :active_status)
    end
end
