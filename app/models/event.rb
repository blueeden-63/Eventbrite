class Event < ApplicationRecord

  validates :start_date, presence: true 
  validates :duration, presence: true, numericality: {only_integer: true, multiple_of: 5, greater_than: 0}
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, numericality: {only_integer: true, in: 1..1000}
  validates :location, presence: true

  has_many :attendances
  has_many :users, through: :attendances

  belongs_to :admin, class_name: "User", foreign_key: "admin_id"
  
end
