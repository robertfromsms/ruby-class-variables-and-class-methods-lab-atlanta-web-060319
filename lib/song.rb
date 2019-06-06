class Song
	attr_reader :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres.push(genre)
		@@artists.push(artist)
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
		genre_count_hash = {}
		self.genres.each {|genre|
			genre_count_hash[genre] = @@genres.count(genre)
		}
		genre_count_hash
	end

	def self.artist_count
		artist_count_hash = {}
		self.artists.each {|artist|
			artist_count_hash[artist] = @@artists.count(artist)
		}
		artist_count_hash
	end
end





