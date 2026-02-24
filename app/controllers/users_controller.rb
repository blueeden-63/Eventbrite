class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]) 
    @event = @user.events.order(created_at: :desc)
  end

  def new
    @user = User..new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] ="Utilisateur créé avec succès"
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

    private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :description, :password, :password_confirmation)
  end
end
