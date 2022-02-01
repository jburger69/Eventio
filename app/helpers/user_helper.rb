module UserHelper
    def past_events
        current_user.attended_events.where('date < ?', Date.today).order(:date)
    end

    def future_events
        current_user.attended_events.where('date > ?', Date.today).order(:date)
    end
end