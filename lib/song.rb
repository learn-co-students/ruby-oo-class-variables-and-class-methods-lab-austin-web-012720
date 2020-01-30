# Song class such that an individual song is initialized with a name, artist and genre.

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count +=1
    @@artists << @artist
    @@genres << @genre
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
    result = {}
    @@genres.each do |item| 
      if !result.has_key?(item)
        result[item] = 0
      end
      result[item] +=1
      end
    result
  end
  
  def self.artist_count
    result = {}
    @@artists.each do |item| 
      if !result.has_key?(item)
        result[item] = 0
      end
      result[item] +=1
      end
    result
  end

end