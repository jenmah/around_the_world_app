class LocationsController < ApplicationController
	def index
		photographs = Photograph.all

		locations = photographs.map do |photograph|
			{
				name: photograph.name,
				latitude: photograph.latitude,
				longitude: photograph.longitude,
				url: photograph_path(photograph),
				type: "circle",
				color: "red",
			}
		end

		render json: locations.to_json
	end
end