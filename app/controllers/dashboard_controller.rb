class DashboardController < ApplicationController

  def index
    @jobs = Job.all
    @job_by_interest = Job.group(:level_of_interest).count
    @top_3_jobs = Job.order(level_of_interest: :desc).limit(3)
    @job_by_location = Job.group(:city).count
  end

end
