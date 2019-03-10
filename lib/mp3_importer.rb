class MP3Importer
  attr_accessor :path, :list

  def initialize(file_path)
    @path = file_path
  end

  def files
    @list = Dir["#{@path}**/*.mp3"]
    @list.each do |song|
      song[0..20]=""
    end
    #binding.pry
    @list
  end

  def import
    files.each do |filename|
      song_name = filename.split(" - ")[0]
      Song.new_by_filename(song_name)
      #binding.pry
    end
  end


end
