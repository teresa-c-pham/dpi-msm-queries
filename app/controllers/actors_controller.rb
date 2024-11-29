class ActorsController < ApplicationController
  def show_actors
    render({ :template => "misc_templates/actors"})
  end

end
