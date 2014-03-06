class InfosController < ApplicationController
def create
    @infoperso = Infoperso.find(params[:infoperso_id])
    @info = @infoperso.infos.create(params[:info].permit(:age_diagnostic,:pays_diagnostic,:autism_type, :trouble_psycho, :other_trouble))
    redirect_to infoperso_path(@infoperso)
  end

  def destroy
		@infoperso = Infoperso.find(params[:infoperso_id])
		@info = @infoperso.infos.find(params[:id])
		@info.destroy
		redirect_to infoperso_path(@infoperso)
	end

end
