class PouzivatelsController < ApplicationController
  before_action :set_pouzivatel, only: [:show, :edit, :update, :destroy]

  # GET /pouzivatels
  # GET /pouzivatels.json
  def index
    @pouzivatels = Pouzivatel.all
  end

  # GET /pouzivatels/1
  # GET /pouzivatels/1.json
  def show
  end

  # GET /pouzivatels/new
  def new
    @pouzivatel = Pouzivatel.new
  end

  # GET /pouzivatels/1/edit
  def edit
  end

  # POST /pouzivatels
  # POST /pouzivatels.json
  def create
    @pouzivatel = Pouzivatel.new(pouzivatel_params)

    respond_to do |format|
      if @pouzivatel.save
        format.html { redirect_to @pouzivatel, notice: 'Pouzivatel was successfully created.' }
        format.json { render :show, status: :created, location: @pouzivatel }
      else
        format.html { render :new }
        format.json { render json: @pouzivatel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pouzivatels/1
  # PATCH/PUT /pouzivatels/1.json
  def update
    respond_to do |format|
      if @pouzivatel.update(pouzivatel_params)
        format.html { redirect_to @pouzivatel, notice: 'Pouzivatel was successfully updated.' }
        format.json { render :show, status: :ok, location: @pouzivatel }
      else
        format.html { render :edit }
        format.json { render json: @pouzivatel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pouzivatels/1
  # DELETE /pouzivatels/1.json
  def destroy
    @pouzivatel.destroy
    respond_to do |format|
      format.html { redirect_to pouzivatels_url, notice: 'Pouzivatel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pouzivatel
      @pouzivatel = Pouzivatel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pouzivatel_params
      params.require(:pouzivatel).permit(:nick, :heslo)
    end
end
