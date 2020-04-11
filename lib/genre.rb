class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @song = []
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
end
