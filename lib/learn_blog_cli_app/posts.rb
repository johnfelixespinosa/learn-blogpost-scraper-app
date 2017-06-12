class LearnBlogCLI::Posts

  attr_accessor :name, :url, :author, :description #:category, :description

  @@all = []

  def self.new_from_index_page(p)
    self.new(
      p.css("h2").text,
      p.css('.post-img').css("a").attribute("href").text,
      p.css('.post-footer').css("a").attribute("href").text
      )
  end

  def initialize(name=nil, url=nil, author=nil) #category=nil)
    @name = name
    @url = url
    @author = author
    #@category = category
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.clear
    @@all.clear
  end

  def self.list_posts
    puts ""
    puts "************* Current Posts *************"
    puts ""
    LearnBlogCLI::Posts.all.each.with_index(1) do |posts, i|
      puts "#{i}. #{posts.name}"
    end
    puts ""
  end

end 