class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :edit, :update]
  before_action :correct_user, only: [:index, :show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    @user.admin = false
  	if @user.save
      log_in @user
  		flash[:success] = "Thank you for joining CoinLens."
  		redirect_to @user
  		# successful
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  #initializing entire parameters hash is unsafe
  #use strong parameters instead
  private
  	def user_params
  		params.require(:user).permit(:name, :email, 
  			:password, :password_confirmation)
  	end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please login to continue."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
