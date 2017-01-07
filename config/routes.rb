Rails.application.routes.draw do
  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Host_as_guest resource:
  # CREATE
  get "/host_as_guests/new", :controller => "host_as_guests", :action => "new"
  post "/create_host_as_guest", :controller => "host_as_guests", :action => "create"

  # READ
  get "/host_as_guests", :controller => "host_as_guests", :action => "index"
  get "/host_as_guests/:id", :controller => "host_as_guests", :action => "show"

  # UPDATE
  get "/host_as_guests/:id/edit", :controller => "host_as_guests", :action => "edit"
  post "/update_host_as_guest/:id", :controller => "host_as_guests", :action => "update"

  # DELETE
  get "/delete_host_as_guest/:id", :controller => "host_as_guests", :action => "destroy"
  #------------------------------

  # Routes for the Listingreview resource:
  # CREATE
  get "/listingreviews/new", :controller => "listingreviews", :action => "new"
  post "/create_listingreview", :controller => "listingreviews", :action => "create"

  # READ
  get "/listingreviews", :controller => "listingreviews", :action => "index"
  get "/listingreviews/:id", :controller => "listingreviews", :action => "show"

  # UPDATE
  get "/listingreviews/:id/edit", :controller => "listingreviews", :action => "edit"
  post "/update_listingreview/:id", :controller => "listingreviews", :action => "update"

  # DELETE
  get "/delete_listingreview/:id", :controller => "listingreviews", :action => "destroy"
  #------------------------------

  # Routes for the Guest_review resource:
  # CREATE
  get "/guest_reviews/new", :controller => "guest_reviews", :action => "new"
  post "/create_guest_review", :controller => "guest_reviews", :action => "create"

  # READ
  get "/guest_reviews", :controller => "guest_reviews", :action => "index"
  get "/guest_reviews/:id", :controller => "guest_reviews", :action => "show"

  # UPDATE
  get "/guest_reviews/:id/edit", :controller => "guest_reviews", :action => "edit"
  post "/update_guest_review/:id", :controller => "guest_reviews", :action => "update"

  # DELETE
  get "/delete_guest_review/:id", :controller => "guest_reviews", :action => "destroy"
  #------------------------------

  # Routes for the Hostlisting resource:
  # CREATE
  get "/hostlistings/new", :controller => "hostlistings", :action => "new"
  post "/create_hostlisting", :controller => "hostlistings", :action => "create"

  # READ
  get "/hostlistings", :controller => "hostlistings", :action => "index"
  get "/hostlistings/:id", :controller => "hostlistings", :action => "show"

  # UPDATE
  get "/hostlistings/:id/edit", :controller => "hostlistings", :action => "edit"
  post "/update_hostlisting/:id", :controller => "hostlistings", :action => "update"

  # DELETE
  get "/delete_hostlisting/:id", :controller => "hostlistings", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  devise_for :hosts
  # Routes for the Host resource:
  # READ
  get "/hosts", :controller => "hosts", :action => "index"
  get "/hosts/:id", :controller => "hosts", :action => "show"


  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  devise_for :guests
  # Routes for the Guest resource:
  # READ
  get "/guests", :controller => "guests", :action => "index"
  get "/guests/:id", :controller => "guests", :action => "show"


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
