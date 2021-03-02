class TextsController < ApplicationController
  def create
    text = Text.new(params_text)
    if text.save
      redirect_to topic_path(params[:topic_id])
    else
      redirect_to topic_path(params[:topic_id])
    end
  end
   
  private

  def params_text
    params.require(:text).permit(:text,:name).merge(topic_id: params[:topic_id])
  end
end
