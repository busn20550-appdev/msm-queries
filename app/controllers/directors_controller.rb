class DirectorsController < ApplicationController 

  def index 
    @list_of_directors = Director.all 
    render ({ :template => 'directors_template/index.html.erb'})

  end 

  def old 
    @oldest = Director.all.where.not({ :dob => nil }).order({ :dob => :asc}).at(0)
    render ({ :template => 'directors_template/eldest.html.erb'})

  end 

  def young 
    @youngest = Director.order({ :dob => :desc }).at(0)
    render ({ :template => 'directors_template/youngest.html.erb'})

  end 

  def details 
    the_id = params.fetch('id')

    @director = Director.all.where({ :id => the_id }).at(0)
    @filmography = Movie.all.where({ :director_id => @director.id})

    render ({ :template => 'directors_template/show.html.erb'})

  end 

end 