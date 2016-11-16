class JobsController < ApplicationController

  def show
    @job = Job.find params[:id]
  end

  def new
    @job = Job.new
    @companies = Company.all
  end

  def create
    @job = Job.new jobs_params

    if @job.save
      redirect_to job_path(@job)
    else
      flash.now[:notice] = "Não foi possível criar a vaga"
      render :new
    end
  end

  private

    def jobs_params
      params.require(:job).permit(:title, :company_id, :location, :category, :description, :featured)
    end

end
