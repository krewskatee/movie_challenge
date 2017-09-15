require_relative 'movie.rb'

class Theatre
  attr_reader :opening_time, :closing_time, :day, :movie
  attr_writer :opening_time, :closing_time, :day, :movie

  def initialize(input_options)
    @opening_time = input_options[:opening_time]
    @closing_time = input_options[:closing_time]
    @day = input_options[:day]
    @movie = input_options[:movie]
  end

  def day
    time = Time.new.strftime("%A")
  end

  def operating_hours
    if day == "Monday" || day == "Tuesday" || day == "Wednesday" || day == "Thursday"
      705
    elsif day == "Friday" || day == "Saturday" || day == "Sunday"
      795
    end
  end

  def schedule
    time_array = []
    p time = Time.new(1991, 8, 26, 10, 15, 0)
    p time.min
    counter = 0
    while counter < operating_hours
      counter += 100 + 15
      count = (100 + 15)
      p time = (time + (count*60))
      p time.min
      time_array << time
    end
    time_array
  end
end



  theatre = Theatre.new(opening_time: "hi", closing_time: "bye", day: "mon")
  p theatre.schedule
