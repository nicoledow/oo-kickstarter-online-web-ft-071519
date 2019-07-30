class Backer
  attr_reader :name
  attr_accessor :backed_projects
  
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def back_project(project)
    @backed_projects << project
    Project.all.each do |proj|
      if proj == project
        
      end
    end
  end
  
  
end