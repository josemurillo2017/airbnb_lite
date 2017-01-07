Rails.application.routes.draw do
  # Routes for the Availibiliity resource:
  # CREATE
  get "/availibiliities/new", :controller => "availibiliities", :action => "new"
  post "/create_availibiliity", :controller => "availibiliities", :action => "create"

  # READ
  get "/availibiliities", :controller => "availibiliities", :action => "index"
  get "/availibiliities/:id", :controller => "availibiliities", :action => "show"

  # UPDATE
  get "/availibiliities/:id/edit", :controller => "availibiliities", :action => "edit"
  post "/update_availibiliity/:id", :controller => "availibiliities", :action => "update"

  # DELETE
  get "/delete_availibiliity/:id", :controller => "availibiliities", :action => "destroy"
  #------------------------------

  # Routes for the Hostpolicy resource:
  # CREATE
  get "/hostpolicies/new", :controller => "hostpolicies", :action => "new"
  post "/create_hostpolicy", :controller => "hostpolicies", :action => "create"

  # READ
  get "/hostpolicies", :controller => "hostpolicies", :action => "index"
  get "/hostpolicies/:id", :controller => "hostpolicies", :action => "show"

  # UPDATE
  get "/hostpolicies/:id/edit", :controller => "hostpolicies", :action => "edit"
  post "/update_hostpolicy/:id", :controller => "hostpolicies", :action => "update"

  # DELETE
  get "/delete_hostpolicy/:id", :controller => "hostpolicies", :action => "destroy"
  #------------------------------

  # Routes for the Policy resource:
  # CREATE
  get "/policies/new", :controller => "policies", :action => "new"
  post "/create_policy", :controller => "policies", :action => "create"

  # READ
  get "/policies", :controller => "policies", :action => "index"
  get "/policies/:id", :controller => "policies", :action => "show"

  # UPDATE
  get "/policies/:id/edit", :controller => "policies", :action => "edit"
  post "/update_policy/:id", :controller => "policies", :action => "update"

  # DELETE
  get "/delete_policy/:id", :controller => "policies", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

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
