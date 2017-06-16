class LearnBlogCLI::Posts

  attr_accessor :name, :url, :author, :description #:category, :description

  @@all = []

  def initialize(name=nil, url=nil, author=nil, description=nil) #category=nil)
    @name = name
    @url = url
    @author = author
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.clear
    @@all.clear
  end

end 

# create a post_info method that lists the remaining attributes of each variable in the all array
# when to clear all? most likely before asking user if they would like to see another category?