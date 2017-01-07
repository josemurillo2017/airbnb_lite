Rails.application.routes.draw do
  # Routes for the Hostphoto resource:
  # CREATE
  get "/hostphotos/new", :controller => "hostphotos", :action => "new"
  post "/create_hostphoto", :controller => "hostphotos", :action => "create"

  # READ
  get "/hostphotos", :controller => "hostphotos", :action => "index"
  get "/hostphotos/:id", :controller => "hostphotos", :action => "show"

  # UPDATE
  get "/hostphotos/:id/edit", :controller => "hostphotos", :action => "edit"
  post "/update_hostphoto/:id", :controller => "hostphotos", :action => "update"

  # DELETE
  get "/delete_hostphoto/:id", :controller => "hostphotos", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
