class Movie

  require 'json'
  attr_reader :title, :time, :rating
  attr_writer :title, :time, :rating

  def initialize(input_options)
    @title = input_options[:title]
    @time = input_options[:time]
    @rating = input_options[:rating]
  end

end



file = File.read('../movie_list.json')
data_hash = JSON.parse(file)
count = 0
movie = ""
data_hash.each do |e|
  e["time"] = e["time"].split(' ');
  total_time = e["time"][0].to_i * 60 + e["time"][2].to_i
  e["rating"] = e["rating"].split(' ')
  e["rating"] = e["rating"].join
  p movie = Movie.new(title: e["title"], time: total_time, rating: e["rating"])
end
