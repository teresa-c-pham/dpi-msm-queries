Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "show_all" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "show_movies" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  get("/actors", { :controller => "actors", :action => "show_actors" })
end
