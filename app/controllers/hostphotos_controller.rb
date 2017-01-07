class HostphotosController < ApplicationController
  def index
    @q = Hostphoto.ransack(params[:q])
    @hostphotos = @q.result(:distinct => true).includes(:listing, :photo).page(params[:page]).per(10)

    render("hostphotos/index.html.erb")
  end

  def show
    @hostphoto = Hostphoto.find(params[:id])

    render("hostphotos/show.html.erb")
  end

  def new
    @hostphoto = Hostphoto.new

    render("hostphotos/new.html.erb")
  end

  def create
    @hostphoto = Hostphoto.new

    @hostphoto.photo_id = params[:photo_id]
    @hostphoto.listing_id = params[:listing_id]

    save_status = @hostphoto.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostphotos/new", "/create_hostphoto"
        redirect_to("/hostphotos")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostphoto created successfully.")
      end
    else
      render("hostphotos/new.html.erb")
    end
  end

  def edit
    @hostphoto = Hostphoto.find(params[:id])

    render("hostphotos/edit.html.erb")
  end

  def update
    @hostphoto = Hostphoto.find(params[:id])

    @hostphoto.photo_id = params[:photo_id]
    @hostphoto.listing_id = params[:listing_id]

    save_status = @hostphoto.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostphotos/#{@hostphoto.id}/edit", "/update_hostphoto"
        redirect_to("/hostphotos/#{@hostphoto.id}", :notice => "Hostphoto updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostphoto updated successfully.")
      end
    else
      render("hostphotos/edit.html.erb")
    end
  end

  def destroy
    @hostphoto = Hostphoto.find(params[:id])

    @hostphoto.destroy

    if URI(request.referer).path == "/hostphotos/#{@hostphoto.id}"
      redirect_to("/", :notice => "Hostphoto deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Hostphoto deleted.")
    end
  end
end
