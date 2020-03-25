class ForumsController < ApplicationController
  before_action :set_up_para

  def index
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new
  end

  def create
    paras = params.require(:forum).permit(:name, :description)
    @forum = Forum.new
    @forum.name = paras[:name]
    @forum.description = paras[:description]
    @forum.save
    flash[:success] = "Forum created"
    redirect_to @forum
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    paras = params.require(:forum).permit(:name, :description)
    forum = Forum.find(params[:id])
    forum.name = paras[:name]
    forum.description = paras[:description]
    forum.save
    flash[:success] = "Forum updated"
    redirect_to forum
  end

  def destroy
    forum = Forum.find(params[:id])
    forum.delete
    flash[:success] = "Forum deleted"
    redirect_to "/forums"
  end

  def _form
  end


  def set_up_para
    @forums = Forum.all
  end

end
