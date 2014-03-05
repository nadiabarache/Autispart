class InfopersosController < ApplicationController
  before_action :set_infoperso, only: [:show, :edit, :update, :destroy]

  # GET /infopersos
  # GET /infopersos.json
  def index
    @infopersos = Infoperso.all
  end

  # GET /infopersos/1
  # GET /infopersos/1.json
  def show
  end

  # GET /infopersos/new
  def new
    @infoperso = Infoperso.new
  end

  # GET /infopersos/1/edit
  def edit
  end

  # POST /infopersos
  # POST /infopersos.json
  def create
    @infoperso = Infoperso.new(infoperso_params)

    respond_to do |format|
      if @infoperso.save
        format.html { redirect_to @infoperso, notice: 'Infoperso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @infoperso }
      else
        format.html { render action: 'new' }
        format.json { render json: @infoperso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infopersos/1
  # PATCH/PUT /infopersos/1.json
  def update
    respond_to do |format|
      if @infoperso.update(infoperso_params)
        format.html { redirect_to @infoperso, notice: 'Infoperso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @infoperso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infopersos/1
  # DELETE /infopersos/1.json
  def destroy
    @infoperso.destroy
    respond_to do |format|
      format.html { redirect_to infopersos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infoperso
      @infoperso = Infoperso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infoperso_params
      params.require(:infoperso).permit(:pseudo, :age, :sexe, :ville, :departement, :pays)
    end
end
