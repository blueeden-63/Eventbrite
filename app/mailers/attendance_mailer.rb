class AttendanceMailer < ApplicationMailer
  default from: ENV["GMAIL_USERNAME"] || 'noreply@eventbrite.com'

  def event_participation(attendance)
    @attendance = attendance
    @user = attendance.user
    @event = attendance.event
    @admin = attendance.event.admin
    mail(to: @admin.email, subject: "Nouvelle participation à #{@event.title}!")
  end
end
