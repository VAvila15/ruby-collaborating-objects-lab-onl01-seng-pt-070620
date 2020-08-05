class Artist
  attr_accessor :name, :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = [] 
    save
  end
  
<<<<<<< HEAD
  def add_song(song)
   self.songs << song
  end
  
=======
>>>>>>> 132b4caecfa57673226db3b2fa0349b2410f5969
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
<<<<<<< HEAD
=======
  def add_song(song)
   self.songs << song
  end
  
>>>>>>> 132b4caecfa57673226db3b2fa0349b2410f5969
  def self.find_or_create_by_name(name)
    !self.find(name) ? self.create(name) : self.find(name)
  end
  
  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end
  
  def self.create(name)
    artist = self.new(name)
<<<<<<< HEAD
=======
    artist.save
>>>>>>> 132b4caecfa57673226db3b2fa0349b2410f5969
    artist
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end