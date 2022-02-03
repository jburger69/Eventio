class Ticket < ApplicationRecord
    
    belongs_to :event
    has_many :users, through: :event_tickets
    has_many :orders, through: :order_items

    def to_s
        price.to_s
    end
end