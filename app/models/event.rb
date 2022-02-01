class Event < ApplicationRecord

    validates :name, presence: true, length: { minimum: 6, maximum: 100 }
    validates :location, presence: true, length: { minimum: 3, maximum: 20 }
    belongs_to :creator, class_name: 'User'
    has_many :event_attendences, foreign_key: :attended_event_id
    has_many :event_attendees, through: :event_attendences, source: :event_attendence
    scope :past_events, -> { where('date <= ?', Date.today).order(:date) }
    scope :future_events, -> { where('date > ?', Date.today).order(:date) }

end
