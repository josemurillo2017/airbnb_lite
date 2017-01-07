class HostpoliciesController < ApplicationController
  def index
    @q = Hostpolicy.ransack(params[:q])
    @hostpolicies = @q.result(:distinct => true).includes(:listing, :policy).page(params[:page]).per(10)

    render("hostpolicies/index.html.erb")
  end

  def show
    @hostpolicy = Hostpolicy.find(params[:id])

    render("hostpolicies/show.html.erb")
  end

  def new
    @hostpolicy = Hostpolicy.new

    render("hostpolicies/new.html.erb")
  end

  def create
    @hostpolicy = Hostpolicy.new

    @hostpolicy.listing_id = params[:listing_id]
    @hostpolicy.policy_id = params[:policy_id]

    save_status = @hostpolicy.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostpolicies/new", "/create_hostpolicy"
        redirect_to("/hostpolicies")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostpolicy created successfully.")
      end
    else
      render("hostpolicies/new.html.erb")
    end
  end

  def edit
    @hostpolicy = Hostpolicy.find(params[:id])

    render("hostpolicies/edit.html.erb")
  end

  def update
    @hostpolicy = Hostpolicy.find(params[:id])

    @hostpolicy.listing_id = params[:listing_id]
    @hostpolicy.policy_id = params[:policy_id]

    save_status = @hostpolicy.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hostpolicies/#{@hostpolicy.id}/edit", "/update_hostpolicy"
        redirect_to("/hostpolicies/#{@hostpolicy.id}", :notice => "Hostpolicy updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Hostpolicy updated successfully.")
      end
    else
      render("hostpolicies/edit.html.erb")
    end
  end

  def destroy
    @hostpolicy = Hostpolicy.find(params[:id])

    @hostpolicy.destroy

    if URI(request.referer).path == "/hostpolicies/#{@hostpolicy.id}"
      redirect_to("/", :notice => "Hostpolicy deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Hostpolicy deleted.")
    end
  end
end
