require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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
    counter_helper(@@genres)
  end

  def self.artist_count
    counter_helper(@@artists)
  end

  def self.counter_helper(array)
    new_hash = {}
    array.each do |item|
      if !new_hash[item]
        new_hash[item] = 1
      else
        new_hash[item] += 1
      end
    end
    new_hash
  end
end
