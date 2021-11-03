class ActorsController < ApplicationController 

  def index 
    @list_of_actors = Actor.all 
    render ({ :template => 'actors_template/index.html.erb'})

  end 

  def details 
    the_id = params.fetch('id')

    @actor = Actor.all.where({ :id => the_id }).at(0)
    @list_of_actors = Actor.all.where({ :director_id => @actor.id})

    render ({ :template => 'actors_template/show.html.erb'})

  end 

end 