class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting.slice(:id, :bird, :location)
        else
            render json: { message: 'No sighting found with that id' }
        end
    end
end
