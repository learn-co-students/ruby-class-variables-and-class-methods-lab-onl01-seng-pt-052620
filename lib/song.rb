require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  # @artist_array = []
  # @genre_array = []



  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # def grouping_things
  #   @artist_array << @artist
  #   @genre_array << @genre
  # end



  

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artist_count
    artist_hash = Hash.new 0
    @@artists.each { |name| artist_hash[name] += 1 }
    artist_hash   
  end

  def self.genre_count
    genre_hash = Hash.new 0
    @@genres.each { |name| genre_hash[name] += 1 }
    genre_hash   
  end



end