class ActorsController < ApplicationController
  def show_actors
    render({ :template => "actor_templates/actors"})
  end

  def show
    id = request.url[/actors\/.*/][7..]
    @actor = Actor.all.where({:id => id}).at(0)
    @characters = Character.all.where({:actor_id => @actor.id})
    render({ :template => "actor_templates/actor"})
  end

end
