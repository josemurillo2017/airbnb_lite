class PoliciesController < ApplicationController
  def index
    @policies = Policy.all

    render("policies/index.html.erb")
  end

  def show
    @policy = Policy.find(params[:id])

    render("policies/show.html.erb")
  end

  def new
    @policy = Policy.new

    render("policies/new.html.erb")
  end

  def create
    @policy = Policy.new

    @policy.description = params[:description]

    save_status = @policy.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/policies/new", "/create_policy"
        redirect_to("/policies")
      else
        redirect_back(:fallback_location => "/", :notice => "Policy created successfully.")
      end
    else
      render("policies/new.html.erb")
    end
  end

  def edit
    @policy = Policy.find(params[:id])

    render("policies/edit.html.erb")
  end

  def update
    @policy = Policy.find(params[:id])

    @policy.description = params[:description]

    save_status = @policy.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/policies/#{@policy.id}/edit", "/update_policy"
        redirect_to("/policies/#{@policy.id}", :notice => "Policy updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Policy updated successfully.")
      end
    else
      render("policies/edit.html.erb")
    end
  end

  def destroy
    @policy = Policy.find(params[:id])

    @policy.destroy

    if URI(request.referer).path == "/policies/#{@policy.id}"
      redirect_to("/", :notice => "Policy deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Policy deleted.")
    end
  end
end
