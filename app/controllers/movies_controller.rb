class MoviesController < ApplicationController
  def show_movies
    render({ :template => "misc_templates/movies"})
  end

  def show
    id = request.url[/movies\/.*/][7..]
    @movie = Movie.all.where(:id => id).at(0)
    @director_name = Director.all.where({:id => @movie.director_id}).at(0).name
    render({ :template => "misc_templates/movie"})
  end
end
