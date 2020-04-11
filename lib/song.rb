class Song
  attr_accessor :name
  attr_reader :artist


  @@all = []

  def initialize(name, *artist)
    @name = name
    @artist = artist
    save
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
    new_song = self.new(name)  # creates an new instance of a song
    new_song.save # the new song is an intance and has an instance method of save witch shovel the intance into the Class variable
    new_song # returns the new song.
  end

  def artist=(artist_name)
    @artist = artist_name
  end
end
