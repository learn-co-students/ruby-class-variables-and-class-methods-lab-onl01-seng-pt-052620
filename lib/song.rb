require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
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
        genre_list = @@genres.uniq
    end

    def self.artists
        artist_list = @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |gen|
            if !genre_hash.key?(gen)
                genre_hash[gen] = 1
            else
                genre_hash[gen] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |art|
            if !artist_hash.key?(art)
                artist_hash[art] = 1
            else
                artist_hash[art] += 1
            end
        end
        artist_hash
    end
end