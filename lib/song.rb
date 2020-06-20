class Song
    attr_accessor :name, :artist, :genre

    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
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
        count = Hash.new(0)
        @@genres.each { |genre| count[genre] += 1 }
        count
    end

    def self.artist_count
        counts = Hash.new(0)
        @@artists.each { |artist| counts[artist] += 1}
        counts
    end
end

