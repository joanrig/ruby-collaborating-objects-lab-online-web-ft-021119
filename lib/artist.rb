class Artist
  attr_accessor :name

  @@all = []
  @songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name = self} || self.new(name)
  end

  def print_songs
    self.songs
  end
end
