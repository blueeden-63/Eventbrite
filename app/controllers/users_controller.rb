class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]) 
    @event = @user.events.order(created_at: :desc)
  end

end
