class Song
  attr_accessor :name
  attr_reader :artist


  @@all = []

  def initialize(name, artist =  nil )
    @name = name
    self.artist = artist if artist # this states that the instance setter method .artist will only be run if artist equals true (nil will make it false) so default argument will make it false and not run.
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

  def artist=(new_artist) # intance of an artist

    new_artist.add_song(self)
    #.add_song gives a song an artist and shovels the instance of that song into the @songs array of the artist
    # @artist = new_artist # this provides the song with its artist but the artist instance still does not know its song.
    # new_artist.songs = self

  end
end
