class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authenticate_current_profile
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    if params[:filter]
      if params[:filter] == "my_jobs"
        @jobs = Job.where(employer_id: current_profile.id)
      else
        # else case for where user has a bid on jobs
        @jobs = []
        Job.all.each do |job|
          @jobs << job if job.bids.where(bartender_id: current_profile.id).count > 0
          # if a job has a bid where bartender_id is equal to the current_profile.id
          # push that job to the @jobs variable.
        end
      end
    else
      #else or ALL show all jobs as usual.
      @jobs = Job.all
    end
  end
  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @bids = Bid.all
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    @job.employer_id = current_profile.id

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # for stripe: The method is actually called on a bid despite being in jobs show,
  # so call_approve is used in this controller.
  def call_approve
    approved_bid = Bid.find(params[:bid_id])
    job = Job.find(params[:job_id])

    BidsController.approve(approved_bid, params[:stripeEmail],params[:stripeToken])

    redirect_to job
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :amount, :content, :address, :employer_id)
    end
end
