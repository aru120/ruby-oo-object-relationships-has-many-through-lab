class Genre
    attr_accessor :genre

    @@all = []

    def initialize(genre)
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        self.genre
    end


    def songs
        Song.all.select {|songs| songs.genre == self}
    end

    def artists
        songs.map(&:artist)
    end


    
end
