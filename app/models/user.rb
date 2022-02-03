class User < ApplicationRecord
  
  has_many :orders
  has_many :event_tickets
  has_many :tickets, through: :event_tickets
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy
  has_many :event_attendences, foreign_key: :event_attendence_id
  has_many :attended_events, through: :event_attendences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
