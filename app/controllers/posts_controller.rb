class PostsController < ApplicationController
  def new
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    @post = @topic.posts.build
  end

  def edit
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @post.delete
  	redirect_to forum_topic_path(:forum_id => @forum.id, :topic_id => @topic.id)
  end

  def _form
  end

  def create
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    @post = @topic.posts.new
    paras = params.require(:post).permit(:content)
    @post.content = paras[:content]
    @post.created_at = DateTime.now
    @post.updated_at = DateTime.now
    @post.user_id = current_user.id
    @post.save

    @topic.last_post_id = current_user.id
    @topic.updated_at = DateTime.now
    @topic.last_post_at = DateTime.now
    @topic.user_id = current_user.id

    @topic.save
    @forum.save
    redirect_to forum_topic_path(:forum_id => @forum.id, :topic_id => @topic.id, :id => @topic.id)
  end

  def update
    paras = params.require(:post).permit(:content, :post_id)
    @forum = Forum.find(params[:forum_id])
    @topic = @forum.topics.find(params[:topic_id])
    @post = @topic.posts.find(paras[:post_id])
    @post.content = paras[:content]
    @post.updated_at = DateTime.now
    @post.save
    @topic.save
    @forum.save
    redirect_to forum_topic_path(:forum_id => @forum.id, :topic_id => @topic.id)
  end
end
