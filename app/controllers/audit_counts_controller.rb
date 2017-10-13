class AuditCountsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_audit_count, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :audit_count

  # GET /audit_counts
  def index
    @q = @audit_counts.search params[:q]
    @audit_counts = @q.result.page(params[:page])
  end

  # GET /audit_counts/1
  def show
  end

  # GET /audit_counts/new
  def new
  end

  # GET /audit_counts/1/edit
  def edit
  end

  # POST /audit_counts
  def create
    respond_to do |format|
      if @audit_count.save
        format.html { redirect_to @audit_count, notice: t('success_create') }
        format.json { render :show, status: :created, location: @audit_count }
      else
        format.html { render :new }
        format.json { render json: @audit_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_counts/1
  def update
    respond_to do |format|
      if @audit_count.update(audit_count_params)
        format.html { redirect_to @audit_count, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @audit_count }
      else
        format.html { render :edit }
        format.json { render json: @audit_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audit_counts/1
  def destroy
    @audit_count.destroy
    respond_to do |format|
      format.html { redirect_to audit_counts_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def audit_count_params
    params.require(:audit_count).permit(:process_step, :num_audits)
  end
end
