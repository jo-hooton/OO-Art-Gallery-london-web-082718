class Painting

  attr_reader :title, :year
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, year, artist, gallery)
    @title = title
    @year = year
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.year
    year_array = []
    @@all.each {|painting| year_array << painting.year}
    year_array.uniq
  end

end
