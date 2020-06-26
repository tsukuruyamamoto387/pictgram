class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
    @comment.content= params[:content]
  end
  
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      flash.now[:danger] ="コメントに失敗しました"
      render :new
    end 
  end 
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :topic_id, :content)
  end
  
  
  
  
  
end
