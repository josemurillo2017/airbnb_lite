class GuestReviewsController < ApplicationController
  def index
    @guest_reviews = GuestReview.all

    render("guest_reviews/index.html.erb")
  end

  def show
    @guest_review = GuestReview.find(params[:id])

    render("guest_reviews/show.html.erb")
  end

  def new
    @guest_review = GuestReview.new

    render("guest_reviews/new.html.erb")
  end

  def create
    @guest_review = GuestReview.new

    @guest_review.guest_id = params[:guest_id]
    @guest_review.overall_rating = params[:overall_rating]
    @guest_review.body = params[:body]

    save_status = @guest_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guest_reviews/new", "/create_guest_review"
        redirect_to("/guest_reviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Guest review created successfully.")
      end
    else
      render("guest_reviews/new.html.erb")
    end
  end

  def edit
    @guest_review = GuestReview.find(params[:id])

    render("guest_reviews/edit.html.erb")
  end

  def update
    @guest_review = GuestReview.find(params[:id])

    @guest_review.guest_id = params[:guest_id]
    @guest_review.overall_rating = params[:overall_rating]
    @guest_review.body = params[:body]

    save_status = @guest_review.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guest_reviews/#{@guest_review.id}/edit", "/update_guest_review"
        redirect_to("/guest_reviews/#{@guest_review.id}", :notice => "Guest review updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Guest review updated successfully.")
      end
    else
      render("guest_reviews/edit.html.erb")
    end
  end

  def destroy
    @guest_review = GuestReview.find(params[:id])

    @guest_review.destroy

    if URI(request.referer).path == "/guest_reviews/#{@guest_review.id}"
      redirect_to("/", :notice => "Guest review deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Guest review deleted.")
    end
  end
end
