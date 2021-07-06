class ReviewsController < ApplicationController

def new 
    @job = Job.find_by_id(params[:id])
    @review = @job.reviews.build
end 

def index
    @reviews = Review.all
end 
end
