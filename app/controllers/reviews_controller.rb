class ReviewsController < ApplicationController

def new 
    @job = Job.find_by_id(params[:job_id])
    @review = @job.reviews.build
end 

def create
    @review = Review.new(review_params)

    if @review.save 
        redirect_to review_path(@review)
    else 
        render :new 
    end 
end

def show
    @review = Review.find_by_id(params[:id])

end 

def index
    if params[:job_id]
        @job = Job.find_by_id(params[:job_id])
        @reviews = @job.reviews
    else
        @reviews = Review.all
    end 
end 

private

def review_params
    params.require(:review).permit(:job_id, :rating, :description)  
end 

end
