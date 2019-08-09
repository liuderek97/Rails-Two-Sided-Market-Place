class BidsController < ApplicationController
  before_action :authenticate_current_profile
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  # GET /bids
  # GET /bids.json
  def index
    @bids = Bid.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
  end

  # GET /bids/new
  def new
    @bid = Bid.new
    @bid.job_id       = params[:job_id]
    @bid.bartender_id = current_profile.id
    @job = params[:job_id]
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)
    @job = bid_params[:job_id]

    respond_to do |format|
      if @bid.save
        format.html { redirect_to job_path(@job), notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def self.approve(job, approved_bid, email, token)

    customer = Stripe::Customer.create({
      email: email,
      source: token,
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: approved_bid.amount.to_i*100,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })

    approved_bid.approved = 1
    approved_bid.save

    rescue Stripe::CardError => e
      flash[:error] = e.message
  
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:job_id, :bartender_id, :amount, :approved, :content)
    end
end
