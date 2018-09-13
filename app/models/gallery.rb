class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def work
    Painting.all.select {|work| work.gallery == self}
  end

  def artists
    artist_array = []
    work.select {|work| artist_array << work.artist}
    artist_array.uniq
  end

  def artist_years_experience
    experience = 0
    artists.each {|artist| experience += artist.years_active}
    experience / artists.count
  end

  def self.city
    city_array = []
    @@all.select {|gallery| city_array << gallery.city}
    city_array.uniq
  end

  def self.all
    @@all
  end

end
