class AttendancesController < ApplicationController

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      flash[:success] ="Participation enregistrée avec succès"
      redirect_to event_path(@attendance.event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:event_id, :user_id, :stripe_customer_id)
  end

end
