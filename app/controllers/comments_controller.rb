class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params_comment)
    redirect_to topic_text_path(@comment.topic_id, @comment.text_id)
  end

  private

  def params_comment
    params.require(:comment).permit(:name, :post, :topic_id, :text_id)
  end
end
