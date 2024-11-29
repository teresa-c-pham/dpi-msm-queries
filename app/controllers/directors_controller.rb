class DirectorsController < ApplicationController
  def show_all
    render({ :template => "director_templates/directors"})
  end

  def youngest
    @youngest = Director.all.where.not({:dob => nil}).order({:dob => :desc}).at(0)
    render({ :template => "director_templates/youngest"})
  end

  def eldest
    @eldest = Director.all.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => "director_templates/eldest"})
  end

  def show
    id = request.url[/directors\/.*/][10..]
    @director = Director.all.where(:id => id).at(0)
    render({ :template => "director_templates/director"})
  end
end
