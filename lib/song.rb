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
        @@genre_count 
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        @@genres.collect do |genre, number|
            if genre.has_key?
            @@genre_count = {genre => number}
        end
    end

    def self.artist_count
        
    end
end
