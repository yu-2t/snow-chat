class TopicsController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @topics = Topic.all.order("created_at DESC")
    @newtopic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @texts = @topic.texts.order("created_at DESC")
    @text = Text.new
  end

  def create
   topic = Topic.new(topic_params)
   if topic.save
    redirect_to root_path
   else
    @topics = Topic.all
    render :index
   end
  end

  def destroy
    topic = Topic.find(params[:id])
    if topic.destroy
      redirect_to root_path
    end
  end

  def search
    @results = @p.result  
  end

  private
  def topic_params
    params.require(:topic).permit(:title)
  end

  def search_product
    @p = Topic.ransack(params[:q]) 
  end
end
