class ListingsController < ApplicationController
  def index
    @listings = Listing.page(params[:page]).per(10)

    render("listings/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @listingreview = Listingreview.new
    @request = Request.new
    @hostlisting = Hostlisting.new
    @availibiliity = Availibiliity.new
    @hostpolicy = Hostpolicy.new
    @hostphoto = Hostphoto.new
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.title = params[:title]
    @listing.private_room = params[:private_room]
    @listing.entire_home = params[:entire_home]
    @listing.description = params[:description]
    @listing.no_of_bedrooms = params[:no_of_bedrooms]
    @listing.no_of_bathrooms = params[:no_of_bathrooms]
    @listing.no_of_beds = params[:no_of_beds]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.default_price_per_night = params[:default_price_per_night]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/new", "/create_listing"
        redirect_to("/listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing created successfully.")
      end
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.private_room = params[:private_room]
    @listing.entire_home = params[:entire_home]
    @listing.description = params[:description]
    @listing.no_of_bedrooms = params[:no_of_bedrooms]
    @listing.no_of_bathrooms = params[:no_of_bathrooms]
    @listing.no_of_beds = params[:no_of_beds]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.default_price_per_night = params[:default_price_per_night]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/#{@listing.id}/edit", "/update_listing"
        redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing updated successfully.")
      end
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing deleted.")
    end
  end
end
