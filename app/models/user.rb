class User < ApplicationRecord
  # Devise modules
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  # Callbacks
  after_create :send_welcome_email

  # Associations
  has_many :events, foreign_key: "admin_id", dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event

  validates :email, presence: true, uniqueness: true
  validates :description, presence: true, length: {in: 10..500}
  validates :first_name, presence: true, length: {in: 2..50}
  validates :last_name, presence: true, length: {in: 2..50}

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
end
