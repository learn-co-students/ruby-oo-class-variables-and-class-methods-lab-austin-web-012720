class Song
    attr_accessor :artist, :genre, :name

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @artist = artist
        @genre = genre
        @name = name

        @@artists << artist
        @@count += 1
        @@genres << genre
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
        uniq_genre = @@genres.uniq
        genre_hash = {}
        uniq_genre.each { |x| genre_hash[x] = @@genres.count(x) }

        genre_hash
    end

    def self.artist_count
        uniq_artist = @@artists.uniq
        artist_hash = {}
        uniq_artist.each { |x| artist_hash[x] = @@artists.count(x) }

        artist_hash
    end

end