class TopicsController < ApplicationController

  def index
  end

  def show
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
  end

  def new
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.build
  end

  def edit
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    return_forum_id = @topic.forum_id
    @topic.delete
    flash[:success] = "Topic Deleted"
    redirect_to "/forums/#{return_forum_id}"
  end

  def update
    redirect_to "/forums/#{@topic.forum_id}"
  end

  def _form
  end

  def create
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.new
    paras = params.require(:topic).permit(:name)
    @topic.name = paras[:name]
    @topic.last_post_id = current_user.id
    @topic.last_post_at = DateTime.now
    @topic.created_at = DateTime.now
    @topic.updated_at = DateTime.now
    @topic.forum_id = params[:forum_id]
    @topic.user_id = current_user.id
    @topic.save
    @forum.save
    flash[:success] = "Topic Created"
    redirect_to @forum
  end
end
