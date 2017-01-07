class HostAsGuestsController < ApplicationController
  def index
    @q = HostAsGuest.ransack(params[:q])
    @host_as_guests = @q.result(:distinct => true).includes(:guest, :host).page(params[:page]).per(10)

    render("host_as_guests/index.html.erb")
  end

  def show
    @host_as_guest = HostAsGuest.find(params[:id])

    render("host_as_guests/show.html.erb")
  end

  def new
    @host_as_guest = HostAsGuest.new

    render("host_as_guests/new.html.erb")
  end

  def create
    @host_as_guest = HostAsGuest.new

    @host_as_guest.host_id = params[:host_id]
    @host_as_guest.guest_id = params[:guest_id]

    save_status = @host_as_guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/host_as_guests/new", "/create_host_as_guest"
        redirect_to("/host_as_guests")
      else
        redirect_back(:fallback_location => "/", :notice => "Host as guest created successfully.")
      end
    else
      render("host_as_guests/new.html.erb")
    end
  end

  def edit
    @host_as_guest = HostAsGuest.find(params[:id])

    render("host_as_guests/edit.html.erb")
  end

  def update
    @host_as_guest = HostAsGuest.find(params[:id])

    @host_as_guest.host_id = params[:host_id]
    @host_as_guest.guest_id = params[:guest_id]

    save_status = @host_as_guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/host_as_guests/#{@host_as_guest.id}/edit", "/update_host_as_guest"
        redirect_to("/host_as_guests/#{@host_as_guest.id}", :notice => "Host as guest updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Host as guest updated successfully.")
      end
    else
      render("host_as_guests/edit.html.erb")
    end
  end

  def destroy
    @host_as_guest = HostAsGuest.find(params[:id])

    @host_as_guest.destroy

    if URI(request.referer).path == "/host_as_guests/#{@host_as_guest.id}"
      redirect_to("/", :notice => "Host as guest deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Host as guest deleted.")
    end
  end
end
