class TextsController < ApplicationController
  def create
    text = Text.new(params_text)
    if text.save
      redirect_to topic_path(params[:topic_id])
    else
      redirect_to topic_path(params[:topic_id])
    end
  end

  def show
    @text = Text.where(id: params[:id])
    @topic = Topic.where(id: params[:topic_id])
    @comment = Comment.new(topic_id: @topic.ids, text_id: @text.ids)
    @comments = Comment.where(text_id: params[:id])
  end
   
  private

  def params_text
    params.require(:text).permit(:text,:name).merge(topic_id: params[:topic_id])
  end
end
