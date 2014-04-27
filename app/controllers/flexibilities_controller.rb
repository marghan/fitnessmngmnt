class FlexibilitiesController < ApplicationController
  before_action :set_flexibility, only: [:show, :edit, :update, :destroy]

  # GET /flexibilities
  # GET /flexibilities.json
  def index
    @flexibilities = Flexibility.all
  end

  # GET /flexibilities/1
  # GET /flexibilities/1.json
  def show
  end

  # GET /flexibilities/new
  def new
    @flexibility = Flexibility.new
  end

  # GET /flexibilities/1/edit
  def edit
  end

  # POST /flexibilities
  # POST /flexibilities.json
  def create
    @flexibility = Flexibility.new(flexibility_params)

    respond_to do |format|
      if @flexibility.save
        format.html { redirect_to @flexibility, notice: 'Flexibility was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flexibility }
      else
        format.html { render action: 'new' }
        format.json { render json: @flexibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flexibilities/1
  # PATCH/PUT /flexibilities/1.json
  def update
    respond_to do |format|
      if @flexibility.update(flexibility_params)
        format.html { redirect_to @flexibility, notice: 'Flexibility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flexibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flexibilities/1
  # DELETE /flexibilities/1.json
  def destroy
    @flexibility.destroy
    respond_to do |format|
      format.html { redirect_to flexibilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flexibility
      @flexibility = Flexibility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flexibility_params
      params.require(:flexibility).permit(:exerciseType, :stretchDistance)
    end
end
