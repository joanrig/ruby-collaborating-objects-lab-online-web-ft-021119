class MP3Importer
  attr_accessor :music_importer

  def initialize(file_path)
    music_importer = MP3Importer.new(file_path)
    music_importer.path = file_path
  end

  def files(file_path)
  end

end
