require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@all = []
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
        @@all << self
    end

    def self.all
        @@all
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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

s1 = Song.new("One Man Band", "Old Dominion", "Country")
s2 = Song.new("I Swear", "All 4 One", "Pop")
s3 = Song.new("Don't Start Now", "Dua Lipa", "Pop")
s4 = Song.new("Wasted On You", "Morgan Wallen", "Country")
s5 = Song.new("I Want to Know What Love is", "Foreigner", "Soft Rock")
s6 = Song.new("Bad Guy", "Billie Eilish", "Pop")
s7 = Song.new("Let's Stay Together", "Al Green", "R&B")
binding.pry