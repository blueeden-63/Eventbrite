# Preview all emails at http://localhost:3000/rails/mailers/attendance_mailer
class AttendanceMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/attendance_mailer/event_participation
  def event_participation
    AttendanceMailer.event_participation
  end
end
