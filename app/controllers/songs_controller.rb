class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find_by(id: params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.update(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
        @song = Song.find_by(id: params[:id])
        @song.update(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit!
    end
    
end
