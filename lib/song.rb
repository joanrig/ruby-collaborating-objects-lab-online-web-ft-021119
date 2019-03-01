require 'pry'

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

  def self.new_by_filename(filename)
    array = filename.split(/[-]/)
    song_name = array[1].strip
    @artist = array[0].strip

    #create song
    @song = self.new(song_name)

    #find or create artist, save artist to list of artists
    @artist = Artist.find_or_create_by_name(@artist)
    @artist.save

    #add song to artist's collection
    @artist.add_song(@song)

    #tell the song it belongs to the artist
    @song.artist = @artist

    @song
  end
end
