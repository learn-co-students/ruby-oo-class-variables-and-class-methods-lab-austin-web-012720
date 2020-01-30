require "pry"

class Song

    attr_accessor :name, :artist, :genre, :genre_count, :artist_count

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << genre

    end
        
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genres.find_all
        binding.pry
        genre_hash = Hash[genres.collect {|genre, songs| [genre, self.genres.]}]
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash[artists.collect {|artist, songs| [artist, self.count]}]
        artist_hash
    end
    
end