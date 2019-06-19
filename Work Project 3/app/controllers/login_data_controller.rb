class LoginDataController < ApplicationController
  before_action :set_login_datum, only: [:show, :edit, :update, :destroy]

  # GET /login_data
  # GET /login_data.json
  def index
    @login_data = LoginDatum.all
  end

  # GET /login_data/1
  # GET /login_data/1.json
  def show
  end

  # GET /login_data/new
  def new
    @login_datum = LoginDatum.new
  end

  # GET /login_data/1/edit
  def edit
  end

  # POST /login_data
  # POST /login_data.json
  def create
    @login_datum = LoginDatum.new(login_datum_params)

    respond_to do |format|
      if @login_datum.save
        format.html { redirect_to root_path, notice: 'Login datum was successfully created.' }
        format.json { render :show, status: :created, location: @login_datum }
      else
        format.html { render :new }
        format.json { render json: @login_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_data/1
  # PATCH/PUT /login_data/1.json
  def update
    respond_to do |format|
      if @login_datum.update(login_datum_params)
        format.html { redirect_to @login_datum, notice: 'Login datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_datum }
      else
        format.html { render :edit }
        format.json { render json: @login_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_data/1
  # DELETE /login_data/1.json
  def destroy
    @login_datum.destroy
    respond_to do |format|
      format.html { redirect_to login_data_url, notice: 'Login datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_datum
      @login_datum = LoginDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_datum_params
      params.require(:login_datum).permit(:username, :password, :password_confirmation)
    end
end
