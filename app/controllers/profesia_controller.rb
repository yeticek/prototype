class ProfesiaController < ApplicationController
  before_action :set_profesium, only: [:show, :edit, :update, :destroy]

  # GET /profesia
  # GET /profesia.json
  def index
    @profesia = Profesium.all
  end

  # GET /profesia/1
  # GET /profesia/1.json
  def show
  end

  # GET /profesia/new
  def new
    @profesium = Profesium.new
  end

  # GET /profesia/1/edit
  def edit
  end

  # POST /profesia
  # POST /profesia.json
  def create
    @profesium = Profesium.new(profesium_params)

    respond_to do |format|
      if @profesium.save
        format.html { redirect_to @profesium, notice: 'Profesium was successfully created.' }
        format.json { render :show, status: :created, location: @profesium }
      else
        format.html { render :new }
        format.json { render json: @profesium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesia/1
  # PATCH/PUT /profesia/1.json
  def update
    respond_to do |format|
      if @profesium.update(profesium_params)
        format.html { redirect_to @profesium, notice: 'Profesium was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesium }
      else
        format.html { render :edit }
        format.json { render json: @profesium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesia/1
  # DELETE /profesia/1.json
  def destroy
    @profesium.destroy
    respond_to do |format|
      format.html { redirect_to profesia_url, notice: 'Profesium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesium
      @profesium = Profesium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesium_params
      params.require(:profesium).permit(:profesia_cislo, :nazov_profesie)
    end
end
