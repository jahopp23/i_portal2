class CommentsController < ApplicationController
  def index
      @comments = Comment.all
  end

  def create
      comment = Comment.new(comment_params)
      flash[:errors] = comment.errors.full_messages unless comment.save
      redirect_to '/'
  end

  def destroy
      comment = Comment.find(params[:id])
      comment.destroy if comment.user == current_user
      redirect_to '/'
  end
  
  private
    def comment_params
        params.require(:comment).permit(:content, :user_id)
    end
end
