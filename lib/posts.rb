class Posts

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
    @category = ategory
    @@all << self
  end

  def self.all
    @@all
  end 

  def doc 
    @doc ||= Nokogiri::HTML(open(self.url))
  end 
end 