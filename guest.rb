class Guest

  attr_reader :name, :fave_song
  attr_accessor :wallet

  def initialize(name, wallet, fave_song)
    @name = name
    @wallet = wallet
    @fave_song = fave_song
  end

  def has_name
    @name = name
end

end
