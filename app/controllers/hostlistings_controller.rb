class HostlistingsController < ApplicationController
  def index
    @q = Hostlisting.ransack(params[:q])
    @hostlistings = @q.result(:distinct => true).includes(:listing, :host).page(params[:page]).per(10)

    render("hostlistings/index.html.erb")
  end

  def show
    @hostlisting = Hostlisting.find(params[:id])

    render("hostlistings/show.html.erb")
  end

  def new
    @hostlisting = Hostlisting.new

    render("hostlistings/new.html.erb")
  end

  def create
    @hostlisting = Hostlisting.new

    @hostlisting.host_id = params[:host_id]
    @hostlisting.listing_id = params[:listing_id]

    save_status = @hostlisting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostlistings/new", "/create_hostlisting"
        redirect_to("/hostlistings")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostlisting created successfully.")
      end
    else
      render("hostlistings/new.html.erb")
    end
  end

  def edit
    @hostlisting = Hostlisting.find(params[:id])

    render("hostlistings/edit.html.erb")
  end

  def update
    @hostlisting = Hostlisting.find(params[:id])

    @hostlisting.host_id = params[:host_id]
    @hostlisting.listing_id = params[:listing_id]

    save_status = @hostlisting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostlistings/#{@hostlisting.id}/edit", "/update_hostlisting"
        redirect_to("/hostlistings/#{@hostlisting.id}", :notice => "Hostlisting updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostlisting updated successfully.")
      end
    else
      render("hostlistings/edit.html.erb")
    end
  end

  def destroy
    @hostlisting = Hostlisting.find(params[:id])

    @hostlisting.destroy

    if URI(request.referer).path == "/hostlistings/#{@hostlisting.id}"
      redirect_to("/", :notice => "Hostlisting deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Hostlisting deleted.")
    end
  end
end
