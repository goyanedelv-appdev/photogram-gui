Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", { :controller => "users", :action => "user_details"})

  get("/", { :controller => "users", :action => "index" })

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "photo_details"})

end
