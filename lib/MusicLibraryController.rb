require 'pry'

class MusicLibraryController
  attr_accessor: @path


  def initialize(path="./spec/fixtures/mp3s")
    @path = path

  end


end
