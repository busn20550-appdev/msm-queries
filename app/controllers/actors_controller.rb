class ActorsController < ApplicationController 

  def index 
    @list_of_actors = Actor.all 
    render ({ :template => 'actors_template/index.html.erb'})

  end 

  def details 
    the_id = params.fetch('id')

    @actor = Actor.all.where({ :id => the_id }).at(0)
    @filmography = Movie.all.where({ :director_id => @actor.id})

    @acted = Character.where({ :actor_id => the_id })

    render ({ :template => 'actors_template/show.html.erb'})

  end 

end 