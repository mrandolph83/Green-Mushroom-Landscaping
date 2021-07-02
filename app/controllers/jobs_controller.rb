class JobsController < ApplicationController

    def new
        @job = Job.new
    end

    def create
      @job = job.new(job_params)
      if @job.save 
        session[:job_id] = @job.id 
        redirect_to job_path(@job)
      else 
        render :new
      end 
    end

    def show
        @job = job.find_by_id(params[:id])
        redirect_to '/' if !@job
    end

    private

    def job_params
        params.require(:job).permit(:email, :password)
    end 

end
