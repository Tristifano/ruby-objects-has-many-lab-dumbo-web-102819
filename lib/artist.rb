class Artist
    attr_accessor :name

    def initialize(name)
        @name = name

    end

    def songs
        Song.all
        # puts Song.all
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        add_song(new_song)
        new_song
    end

    def self.song_count
        Song.all.length
    end

end