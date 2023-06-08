#!/usr/bin/env ruby

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

song = Song.new('Alive', 'Kid Cudi', 'Rap')
song = Song.new('Test', 'Testartist', 'Rap')
song = Song.new('Test2', 'Kid Cudi', 'Hip hop')
pp Song.count, Song.genres, Song.artists, Song.genre_count, Song.artist_count