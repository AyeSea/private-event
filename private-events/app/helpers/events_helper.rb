module EventsHelper
	def prev_events
		current_user.attended_events.where("date < ? ", DateTime.now)
	end

	def upcoming_events
		current_user.attended_events.where("date >= ? ", DateTime.now)
	end
end