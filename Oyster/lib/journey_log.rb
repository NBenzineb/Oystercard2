require_relative './journey.rb'
require_relative './oystercard.rb'

class JourneyLog

    attr_reader :journey_class, :journeys, :entry_station, :exit_station, :current_journey
  
    def initialize(journey_class)
      @journey_class = journey_class
      @journeys = []
    end
 
    def start(entry_station)
      @current_journey = Journey.new
      @current_journey.entry_station = entry_station
    end

    def finish(exit_station)
      @current_journey.exit_station = exit_station
    end

#private

    def current_journey
      if @current_journey.entry_station != nil && @current_journey.exit_station == nil 
        return @current_journey
      else
        @current_journey = Journey.new
      end
    end
end

  