require "pry"
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres =[]
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
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
  #returns hash with key being genre and value of that key
  #being the number of songs with that genre
  #go thru @@genre array and count
  ghash = {}
  i = 0
  #while i < @@genres.uniq.length do
  #  ghash[@@genres[i]] = 0
  #  i += 1
  #end
  #Then count each genre if that
  #@@genres.each do |genre|
  #  if genre
  @@genres.each do |genre|
    if ghash[genre].nil?
      ghash[genre] = 1
    elsif  !ghash[genre].nil?
      ghash[genre] += 1
    end
  end
  return ghash
end

def self.artist_count
arthash = {}
  @@artists.each do |artist|
    if arthash[artist].nil?
      arthash[artist] = 1
    elsif  !arthash[artist].nil?
      arthash[artist] += 1
    end
  end
  return arthash
end



end
