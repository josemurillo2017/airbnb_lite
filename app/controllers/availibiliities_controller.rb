class AvailibiliitiesController < ApplicationController
  def index
    @availibiliities = Availibiliity.all

    render("availibiliities/index.html.erb")
  end

  def show
    @availibiliity = Availibiliity.find(params[:id])

    render("availibiliities/show.html.erb")
  end

  def new
    @availibiliity = Availibiliity.new

    render("availibiliities/new.html.erb")
  end

  def create
    @availibiliity = Availibiliity.new

    @availibiliity.listing_id = params[:listing_id]
    @availibiliity.date = params[:date]
    @availibiliity.price = params[:price]
    @availibiliity.is_available = params[:is_available]
    @availibiliity.message = params[:message]

    save_status = @availibiliity.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/availibiliities/new", "/create_availibiliity"
        redirect_to("/availibiliities")
      else
        redirect_back(:fallback_location => "/", :notice => "Availibiliity created successfully.")
      end
    else
      render("availibiliities/new.html.erb")
    end
  end

  def edit
    @availibiliity = Availibiliity.find(params[:id])

    render("availibiliities/edit.html.erb")
  end

  def update
    @availibiliity = Availibiliity.find(params[:id])

    @availibiliity.listing_id = params[:listing_id]
    @availibiliity.date = params[:date]
    @availibiliity.price = params[:price]
    @availibiliity.is_available = params[:is_available]
    @availibiliity.message = params[:message]

    save_status = @availibiliity.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/availibiliities/#{@availibiliity.id}/edit", "/update_availibiliity"
        redirect_to("/availibiliities/#{@availibiliity.id}", :notice => "Availibiliity updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Availibiliity updated successfully.")
      end
    else
      render("availibiliities/edit.html.erb")
    end
  end

  def destroy
    @availibiliity = Availibiliity.find(params[:id])

    @availibiliity.destroy

    if URI(request.referer).path == "/availibiliities/#{@availibiliity.id}"
      redirect_to("/", :notice => "Availibiliity deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Availibiliity deleted.")
    end
  end
end
