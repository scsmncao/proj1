class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to ''
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to '/trainers/' + @pokemon.trainer_id.to_s
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(pokemon_params.merge(:level => 1, :health => 100, :trainer_id => current_trainer.id))
		if @pokemon.save
			redirect_to '/trainers/' + current_trainer.id.to_s
		else 
			render 'error'
		end
	end

	def pokemon_params
	    params.require(:pokemon).permit(:name)
  	end
end
