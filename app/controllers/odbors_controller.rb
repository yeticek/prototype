class OdborsController < ApplicationController
  before_action :set_odbor, only: [:show, :edit, :update, :destroy]

  # GET /odbors
  # GET /odbors.json
  def index
    @odbors = Odbor.all
  end

  # GET /odbors/1
  # GET /odbors/1.json
  def show
  end

  # GET /odbors/new
  def new
    @odbor = Odbor.new
  end

  # GET /odbors/1/edit
  def edit
  end

  # POST /odbors
  # POST /odbors.json
  def create
    @odbor = Odbor.new(odbor_params)

    respond_to do |format|
      if @odbor.save
        format.html { redirect_to @odbor, notice: 'Odbor was successfully created.' }
        format.json { render :show, status: :created, location: @odbor }
      else
        format.html { render :new }
        format.json { render json: @odbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odbors/1
  # PATCH/PUT /odbors/1.json
  def update
    respond_to do |format|
      if @odbor.update(odbor_params)
        format.html { redirect_to @odbor, notice: 'Odbor was successfully updated.' }
        format.json { render :show, status: :ok, location: @odbor }
      else
        format.html { render :edit }
        format.json { render json: @odbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odbors/1
  # DELETE /odbors/1.json
  def destroy
    @odbor.destroy
    respond_to do |format|
      format.html { redirect_to odbors_url, notice: 'Odbor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odbor
      @odbor = Odbor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odbor_params
      params.require(:odbor).permit(:cislo, :nazov)
    end
end
