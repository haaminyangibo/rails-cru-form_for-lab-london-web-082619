class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end
    def show
        @genre = Genre.find(params[:id])
   end

   def new 
       @genre = Genre.new
   end

   def create 
       @genre=Genre.new
       @genre.name = params[:genre][:name]
   
    
       @genre.save
       redirect_to genre_path(@genre.id)
   end

   def edit
       @genre =Genre.find(params[:id])
   end

   def update

           @genre = Genre.find(params[:id])
           @genre.update(name:params[:genre][:name])
           redirect_to song_path(@genre)

   end

end
