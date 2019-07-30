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
    Project.all.each do |this_project|
      if this_project == project
        this_project.backers << self
      end
    end
  end
  
  
end