class Room

  attr_accessor :name,:entry_fee, :capacity, :guests, :playlist

  def initialize(name, entry_fee, capacity, guests, playlist)
    @name = name
    @entry_fee = entry_fee
    @capacity = capacity
    @guests = []
    @playlist = []
  end


  def check_name
    return @name
  end

  def check_capacity
    return @capacity
  end

  def check_entry_fee
    return @entry_fee
  end

  def guests_number
    return @guests.size
  end

  def playlist_size
    return @playlist.length
  end

    def add_guest(new_guest)      @guests.push(new_guest)
    end

    def remove_guest(guest)
      @guests.delete(guest)
    end

    def add_song(new_song)
      @playlist.push(new_song)
    end

    def remove_song(song)
      @playlist.delete(song)
    end

    def has_entry_fee (guest)
      if guest.wallet >= @entry_fee
        return true
      else
        return false
      end
    end


  # def fave_song (song)
  #   if song = @fave_song
  #     return "Whoo!"
  #   end
  # end

end
