require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist, :genre


  @@all = []

  def initialize(name, artist =  nil, genre = nil )
    @name = name
    self.artist = artist if artist # this states that the instance setter method .artist will only be run if artist equals true (nil will make it false) so default argument will make it false and not run.
    self.genre = genre if genre
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

  def artist=(artist) # intance of an artist
    @artist = artist
    artist.add_song(self) #.add_song gives a artist a song and shovels the instance of that song into the @songs array of the artist
  end

  def genre=(genre) # this is talking an genre instance
    @genre = genre
    if genre.songs.include?(self)

    else
      genre.songs = self
    end
  end

  def self.find_by_name(song_name)
    self.all
    binding.pry
  end

end
