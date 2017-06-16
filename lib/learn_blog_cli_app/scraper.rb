class LearnBlogCLI::Scraper
  
  attr_accessor :doc

  @doc = ""

  def get_page(category_url)
    @doc = Nokogiri::HTML(open("http://blog.flatironschool.com/category/#{category_url}"))
  end 
  
  def scrape_blogs
    self.doc.css('.shell article')
  end

  def make_category(category)
    if category == 1
      get_page("learning-to-code")
    elsif category == 2
      get_page("career-advice")
    elsif category == 3
      get_page("alumni-stories")
    elsif category == 4
      get_page("flatiron-news")
    elsif category == 5
      get_page("flatiron-engineering")
    end
      make_posts
  end

  def make_posts
    scrape_blogs.each do |p| 
      new_from_index_page(p)
    end  
  end

  def new_from_index_page(p)
    LearnBlogCLI::Posts.new(
      p.css("h2").text,
      p.css('.post-img').css("a").attribute("href").text,
      p.css('.post-footer').css("a").text,
      p.css('.post-txt').css("p").text
      )
  end

end