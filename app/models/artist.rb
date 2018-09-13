class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def work
    work_array = []
    Painting.all.select {|work| work.artist == self}

  end

  def galleries
    gallery_array = []
    work.select {|work| gallery_array << work.gallery}
    gallery_array.uniq
  end

  def cities
    city_array = []
    galleries.select {|gallery| city_array << gallery.city}
    city_array.uniq.each {|city|
      puts city
    }
  end

  def self.average_years_experience
    experience = 0
    @@all.each {|artist| experience += artist.years_active}
    experience / @@all.count
  end

  def self.all
    @@all
  end

end
