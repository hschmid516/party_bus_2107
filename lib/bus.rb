class Bus
attr_reader :name, :capacity, :passengers, :number_of_passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
    @number_of_passengers = 0
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
    @number_of_passengers += 1
  end

  def yell_at_passengers
    @passengers.map do |passenger| passenger.upcase
    end
  end

  def over_capacity?
    return true if @number_of_passengers > 4
    false
  end

  def kick_out
    @passengers.shift
    @number_of_passengers -= 1
  end
end
