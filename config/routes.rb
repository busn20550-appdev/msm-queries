Rails.application.routes.draw do
  
  
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "old" })

  get("/directors/youngest", { :controller => "directors", :action => "young" })
  
  get("/directors/:id", { :controller => "directors", :action => "details" })

  

end
