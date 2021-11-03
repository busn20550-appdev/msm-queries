class MoviesController < ApplicationController 

  def index 
    @list_of_movies = Movie.all 
    render ({ :template => 'movies_template/index.html.erb'})

  end 

  def details 
    the_id = params.fetch('id')

    @movie = Movie.all.where({ :id => the_id }).at(0)
    @list_of_movies = Movie.all.where({ :director_id => @movie.id})

    render ({ :template => 'movies_template/show.html.erb'})

  end 

end 