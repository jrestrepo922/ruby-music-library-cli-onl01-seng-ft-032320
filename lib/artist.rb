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

  def songs # getter method for songs
    @songs
  end

  def songs=(new_song) # Setter method for songs that shovels into the @songs instance variable
    @songs << new_song
  end

  def add_song(song)  #instance of a song
    if song.artist

    else
    song.artist = self  if song.artist # the song instance artist property was given an instace of the artist. The song knows it has an artist
      if songs.include?(song)

      else
        self.songs=(song)  # calling the artist instance setter method to shovel the instance of a song into the @songs array. THe artist has added this song to a list of songs
      end
    end
  end
end
