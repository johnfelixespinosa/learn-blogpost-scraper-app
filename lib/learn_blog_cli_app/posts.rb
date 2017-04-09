class LearnBlogCLI::Posts

  attr_accessor :name, :url, :author, :category, :description

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      
      )
  end

  def initialize(name=nil, url=nil, author=nil, category=nil)
    @name = name
    @url = url
    @author = author
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end 
end 