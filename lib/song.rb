class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name
    self.name = @name
  end

  def artist
    self.artist = @artist
  end

  # def self.new_by_filename(filename)
  #   Song.new(filename)
end
