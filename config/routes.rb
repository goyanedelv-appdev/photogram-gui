Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", { :controller => "users", :action => "show"})

  get("/", { :controller => "users", :action => "index" })

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "show"})

  get("/delete_photo/:toast_id", { :controller => "photos", :action => "delete"})

  get("/insert_photo", { :controller => "photos", :action => "create"})

  get("/update_photo/:update_id", { :controller => "photos", :action => "update"})

  get("/insert_comment_record", { :controller => "photos", :action => "comment"})

  get("/insert_user_record", { :controller => "users", :action => "create"})

  get("/update_user/:current_name", { :controller => "users", :action => "update"})

end
