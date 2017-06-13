class LearnBlogCLI::Posts

  attr_accessor :name, :url, :author, :description #:category, :description

  @@all = []

  def self.new_from_index_page(p)
    self.new(
      p.css("h2").text,
      p.css('.post-img').css("a").attribute("href").text,
      p.css('.post-footer').css("a").text,
      p.css('.post-txt').css("p").text
      )
  end

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

  def self.list_posts
    puts ""
    puts "---------- Current Posts ----------"
    puts ""
    LearnBlogCLI::Posts.all.each.with_index(1) do |posts, i|
      puts "#{i}. #{posts.name}"
    end
    puts ""
  end

  def self.print_post_info(input)
    puts ""
    puts "#{self.all[input-1].name}"
    puts "Written by : #{self.all[input-1].author}"
    puts ""
    puts "#{self.all[input-1].description}..."
    puts ""
    puts "Please visit : "
    puts "#{self.all[input-1].url}"
    puts "For complete post"
  end

end 

# create a post_info method that lists the remaining attributes of each variable in the all array
# when to clear all? most likely before asking user if they would like to see another category?