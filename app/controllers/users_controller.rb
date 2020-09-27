class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  # before_action :redirect_to_catalog_if_logged_in, only: [:new, :create]


  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      flash[:success] = 'User was successfully created.'
      redirect_to games_path
    else
      render :new
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_digest)
    end
end
