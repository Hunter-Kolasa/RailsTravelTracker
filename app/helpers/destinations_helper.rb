module DestinationsHelper
    def exists?(destination)
        Destination.find_by(city: destination.city)
    end

    def city_state_country(destination)
        destination.city + ", " + destination.state + " " + destination.country
    end
end
