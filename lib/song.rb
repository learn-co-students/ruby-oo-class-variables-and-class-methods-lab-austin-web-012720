require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre, :hash

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @hash = {}

        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end 

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}
        array = genres
        array.each do |gen|
            hash[gen] = 0
        end
        
        @@genres.each do |gen1|
            hash[gen1] += 1
        end
        hash
    end 

    def self.artist_count
        hash_new = {}
        array = artists
        array.each do |a|
            hash_new[a] = 0
            #binding.pry
        end
        

        @@artists.each do |a1|
            hash_new[a1] += 1
        end 
        hash_new
    end
end 