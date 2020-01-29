class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@genres << genre
        @@artists << artist
        @@count+=1
    end

    def self.count 
        return @@count
    end

    def self.genres
        return @@genres.uniq()
    end

    def self.artists
        return @@artists.uniq()
    end

    def self.genre_count
        h = {}
        @@genres.each do |g|
            if h[g]
                h[g] +=1
            else
                h[g] = 1
            end
        end
        return h
    end

    def self.artist_count
        h = {}
        @@artists.each do |a|
            if h[a]
                h[a] +=1
            else
                h[a] = 1
            end
        end
        return h
    end



end