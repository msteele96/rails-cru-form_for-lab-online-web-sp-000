class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.update(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.find_by(id: params[:id])
        @genre.update(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    private

    def genre_params
        params.require(:genre).permit!
    end

end
