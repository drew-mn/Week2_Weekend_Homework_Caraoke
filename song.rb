class Song

attr_reader :song_name

  def initialize(song_name)
    @song_name = song_name
  end

  def check_name
    return @song_name
  end

end
