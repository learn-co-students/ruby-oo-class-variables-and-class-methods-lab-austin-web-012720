require 'pry'
class Song

    attr_accessor :name, :artist, :genre, :count

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        
        @@genres << genre
        @@artists << artist
        @@count += 1
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

        new_hash = {}


        @@genres.each do |key|
            if !new_hash.has_key?(key)
                new_hash[key] = @@genres.select{|elements| elements == key}.count
            end
        end
        new_hash
    end

    def self.artist_count

        new_hash = {}


        @@artists.each do |key|
            if !new_hash.has_key?(key)
                new_hash[key] = @@artists.select{|elements| elements == key}.count
            end
        end
        new_hash
    end
    


    

end
