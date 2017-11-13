class TrailsController < ApplicationController

    def index
        @trails = Trail.all
    end

    def new
    end

    def create
        @trail = Trail.new(trail_params)
        if @trail.save
            redirect_to trails_path
        else
            render :new
        end
    end

    private

    def trail_params
        params.require(:trail).permit(:title, :description, :image_url, :length, :difficulty)
    end
end