class Song
    # CLASS VARIABLES AND METHODS
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}

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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
    # END CLASS VARIABLES AND METHODS

    # INSTANCE VARIABLES AND METHODS
    attr_reader :name, :artist, :genre


    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre

        @@count += 1
    end

    def name=(name)
        @name=name
    end

    def artist=(artist)
        if @@artist_count[artist] == nil
            @@artist_count[artist] = 0
        end

        @@artist_count[artist] += 1
        @@artists << artist

        @artist = artist
    end

    def genre=(genre)
        if @@genre_count[genre] == nil
            @@genre_count[genre] = 0
        end

        @@genre_count[genre] += 1
        @@genres << genre

        @genre = genre
    end

    # END INSTANCE VARIABLES AND METHODS
end