module EventsHelper
  def event_count(event_name)
    Event.find_by_name(event_name).count
  end
end
