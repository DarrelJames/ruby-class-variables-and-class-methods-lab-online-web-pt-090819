
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist 
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do | artist |
            artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1
        end
        artist_hash
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do | genre |
            genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
        end
        genre_hash
    end
end