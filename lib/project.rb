class Project
  attr_reader :title
  attr_accessor :backers
  
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_backer(new_backer)
    @backers << new_backer
    
    Backer.all.each do |backer|
      if backer == new_backer
        backer.
      end
    end
  end
  
end