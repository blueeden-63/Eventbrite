class EventsController < ApplicationController  

  def new 
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] ="Evenement crée avec succès"
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def delete
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] ="Evenement supprimé avec succès"
      redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :admin_id)
  end

end
