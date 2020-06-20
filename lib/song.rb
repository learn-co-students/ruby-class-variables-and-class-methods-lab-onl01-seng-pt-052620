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
        counter = 0
        genre_hash = {}
        @@genres.each do |genre|
            if @@genres.include?(genre)
                @@genre_count[genre] = counter+=1
            else
                nil
            end
        end
        @@genre_count
    end

    def self.artist_count

    end
end

