class LearnBlogCLI::Posts

  attr_accessor :name, :url, :author, :description 

  @@all = []

  def initialize(name=nil, url=nil, author=nil, description=nil) 
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
