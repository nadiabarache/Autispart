class EtatsController < ApplicationController
def create
    @infoperso = Infoperso.find(params[:infoperso_id])
    @etat = @infoperso.etats.create(params[:etat].permit(:humor,:event))
    redirect_to infoperso_path(@infoperso)
  end

  def destroy
		@infoperso = Infoperso.find(params[:infoperso_id])
		@etat = @infoperso.etats.find(params[:id])
		@etat.destroy
		redirect_to infoperso_path(@infoperso)
	end

end
