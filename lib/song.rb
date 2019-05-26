class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1

    if not @@artists.include?(artist)
      @@artists << artist
    end

    if not @@genres.include?(genre)
      @@genres << genre
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

end
