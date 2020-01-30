require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
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
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
            genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        song_count = {}
        @@artists.each do |song|
            if song_count[song]
                song_count[song] += 1
            else
            song_count[song] = 1
            end
        end
        song_count
    end

end