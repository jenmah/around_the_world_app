class PhotographsController < ApplicationController
	def show
		@artwork = Photograph.find(params[:id])

		# render view here
	end
end