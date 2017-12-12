class CommentsController < ApplicationController
  def new
    @job = Job.find(params[:id])
    @comment = Comment.new
  end

  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Your comment has been posted!"
      redirect_to company_job_path(@job.company, @job)
    else
      redirect_to company_job_path(@job)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :job_id)
  end
end
