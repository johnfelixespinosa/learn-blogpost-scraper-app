
class LearnBlogCLI::Scraper

#require 'open-uri'
#require 'pry'
#require 'nokogiri'
attr_accessor :doc

  @doc = ""

  def get_page(category_url)
    @doc = Nokogiri::HTML(open("http://blog.flatironschool.com/category/#{category_url}"))
    scrape_blogs
  end 
  
  def scrape_blogs
    puts self.doc.css('.shell article')
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
  end

  def make_posts
    scrape_blogs.each do |p| 
      LearnBlogCLI::Posts.new_from_index_page(p)
    end  
  end
#binding.pry

end


#http://blog.flatironschool.com/category/learning-to-code/
#http://blog.flatironschool.com/category/career-advice/
#http://blog.flatironschool.com/category/alumni-stories/
#http://blog.flatironschool.com/category/flatiron-news/
#http://blog.flatironschool.com/category/flatiron-engineering/