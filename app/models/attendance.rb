class Attendance < ApplicationRecord
  # Callbacks
  after_create :send_participation_email

  validates :stripe_customer_id, presence: true

  belongs_to :user
  belongs_to :event

  private

  def send_participation_email
    AttendanceMailer.event_participation(self).deliver_now
  end
end
