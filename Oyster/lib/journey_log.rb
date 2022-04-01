require_relative './journey.rb'
require_relative './oystercard.rb'

class JourneyLog

    attr_reader :journey_class, :journeys, :entry_station, :exit_station
  
    def initialize(journey_class)
      @journey_class = journey_class
      @journeys = []
    end
 
    def start(entry_station)
        @current_journey = Journey.new
        @current_journey.entry_station = entry_station
    end

end

  