class Login1sController < ApplicationController
  before_action :set_login1, only: [:show, :edit, :update, :destroy]

  # GET /login1s
  # GET /login1s.json
  def index
    @login1s = Login1.all
  end

  # GET /login1s/1
  # GET /login1s/1.json
  def show
  end

  # GET /login1s/new
  def new
    @login1 = Login1.new
  end

  # GET /login1s/1/edit
  def edit
  end

  # POST /login1s
  # POST /login1s.json
   def create
    @login1 = Login1.new(login1_params)
    if @login1.save
      session[:login1_id] = @login1.id
      redirect_to root_url, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /login1s/1
  # PATCH/PUT /login1s/1.json
  def update
    respond_to do |format|
      if @login1.update(login1_params)
        format.html { redirect_to @login1, notice: 'Login1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @login1 }
      else
        format.html { render :edit }
        format.json { render json: @login1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login1s/1
  # DELETE /login1s/1.json
  def destroy
    @login1.destroy
    respond_to do |format|
      format.html { redirect_to login1s_url, notice: 'Login1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login1
      @login1 = Login1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login1_params
      params.require(:login1).permit(:Email, :CompanyName, :Phone, :EscalationLevel, :password, :password_confirmation)
    end
end
