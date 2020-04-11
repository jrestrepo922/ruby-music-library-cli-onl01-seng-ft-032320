class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    new_artist = self.new(name)  # creates an new instance of a song
    new_artist.save
    new_artist
  end

  def songs
    @songs
  end
end
