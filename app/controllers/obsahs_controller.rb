class ObsahsController < ApplicationController
  before_action :set_obsah, only: [:show, :edit, :update, :destroy]

  # GET /obsahs
  # GET /obsahs.json
  def index
    @obsahs = Obsah.all
  end

  # GET /obsahs/1
  # GET /obsahs/1.json
  def show
  end

  # GET /obsahs/new
  def new
    @obsah = Obsah.new
  end

  # GET /obsahs/1/edit
  def edit
  end

  # POST /obsahs
  # POST /obsahs.json
  def create
    @obsah = Obsah.new(obsah_params)

    respond_to do |format|
      if @obsah.save
        format.html { redirect_to @obsah, notice: 'Obsah was successfully created.' }
        format.json { render :show, status: :created, location: @obsah }
      else
        format.html { render :new }
        format.json { render json: @obsah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obsahs/1
  # PATCH/PUT /obsahs/1.json
  def update
    respond_to do |format|
      if @obsah.update(obsah_params)
        format.html { redirect_to @obsah, notice: 'Obsah was successfully updated.' }
        format.json { render :show, status: :ok, location: @obsah }
      else
        format.html { render :edit }
        format.json { render json: @obsah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obsahs/1
  # DELETE /obsahs/1.json
  def destroy
    @obsah.destroy
    respond_to do |format|
      format.html { redirect_to obsahs_url, notice: 'Obsah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obsah
      @obsah = Obsah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obsah_params
      params.require(:obsah).permit(:pouzivatel, :priradene_profesie, :priradene_obory, :nazov_obsahu, :vzdelavaci_obsah)
    end
end
