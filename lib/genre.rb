class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    new_genre = self.new(name)
    new_genre.save
    new_genre
  end

  def songs
    @songs
  end

  def songs=(new_song) #setter method that shovels a song into the @songs array
    songs << new_song
  end

  def artists
    @new_array_artist = []
    Song.all.each { |song|  #songs intances have name, instances of artist and instance of genre.
      if song.genre == self
        @new_array_artist << song.artist
      end
    }

    @new_array_artist
  end


end
