class Song

    attr_accessor :song, :artist, :genre
    attr_reader  :genres, :name, :count

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)

        @artist = artist
        @name = name
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

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
        
       @@genre_count = @@genres.uniq.map {|key| [key, @@genres.count(key)]}.to_h

    end

    def self.artist_count

        @@artist_count = @@artists.uniq.map {|key| [key, @@artists.count(key)]}.to_h

    end


end

