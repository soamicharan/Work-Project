class CandidateDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_candidate_detail, only: [:show, :edit, :update, :destroy]

  # GET /candidate_details
  # GET /candidate_details.json
  def index
    @candidate_details = CandidateDetail.all
  end

  # GET /candidate_details/1
  # GET /candidate_details/1.json
  def show
  end

  # GET /candidate_details/new
  def new
    @candidate_detail = CandidateDetail.new
  end

  # GET /candidate_details/1/edit
  def edit
  end

  # POST /candidate_details
  # POST /candidate_details.json
  def create
    @candidate_detail = CandidateDetail.new(candidate_detail_params)

    respond_to do |format|
      if @candidate_detail.save
        format.html { redirect_to @candidate_detail, notice: 'Candidate detail was successfully created.' }
        format.json { render :show, status: :created, location: @candidate_detail }
      else
        format.html { render :new }
        format.json { render json: @candidate_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidate_details/1
  # PATCH/PUT /candidate_details/1.json
  def update
    respond_to do |format|
      if @candidate_detail.update(candidate_detail_params)
        format.html { redirect_to @candidate_detail, notice: 'Candidate detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate_detail }
      else
        format.html { render :edit }
        format.json { render json: @candidate_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidate_details/1
  # DELETE /candidate_details/1.json
  def destroy
    @candidate_detail.destroy
    respond_to do |format|
      format.html { redirect_to candidate_details_url, notice: 'Candidate detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate_detail
      @candidate_detail = CandidateDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_detail_params
      params.require(:candidate_detail).permit(:s_no, :src_reg, :zone, :DOR, :reg_no, :name, :gender, :age, :address, :branch, :email, :contact_no, :state, :qualification, :specialization, :experience, :remarks_mobility, :DOC, :status)
    end
end
