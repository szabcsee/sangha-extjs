class BuddhistsController < ApplicationController
  before_action :set_buddhist, only: [:show, :edit, :update, :destroy]

  # GET /buddhists
  # GET /buddhists.json
  def index
    @buddhists = Buddhist.all
  end

  # GET /buddhists/1
  # GET /buddhists/1.json
  def show
  end

  # GET /buddhists/new
  def new
    @buddhist = Buddhist.new
  end

  # GET /buddhists/1/edit
  def edit
  end

  # POST /buddhists
  # POST /buddhists.json
  def create
    @buddhist = Buddhist.new(buddhist_params)

    respond_to do |format|
      if @buddhist.save
        format.html { redirect_to @buddhist, notice: 'Buddhist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @buddhist }
      else
        format.html { render action: 'new' }
        format.json { render json: @buddhist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buddhists/1
  # PATCH/PUT /buddhists/1.json
  def update
    respond_to do |format|
      if @buddhist.update(buddhist_params)
        format.html { redirect_to @buddhist, notice: 'Buddhist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @buddhist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buddhists/1
  # DELETE /buddhists/1.json
  def destroy
    @buddhist.destroy
    respond_to do |format|
      format.html { redirect_to buddhists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buddhist
      @buddhist = Buddhist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buddhist_params
      params.require(:buddhist).permit(:status, :name, :email, :buzzer_id, :telephone_number, :program_sms, :address, :local_center)
    end
end