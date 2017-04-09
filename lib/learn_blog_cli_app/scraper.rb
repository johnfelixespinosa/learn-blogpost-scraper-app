class LearnBlogCLI::Scraper

  def get_page(category_url)
    Nokogiri::HTML(open("http://blog.flatironschool.com/category/#{category_url}"))
  end 
  
  def scrape_blogs(url)
    self.get_page.css("url")
  end

  def make_posts(category)
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

end 


#http://blog.flatironschool.com/category/learning-to-code/
#http://blog.flatironschool.com/category/career-advice/
#http://blog.flatironschool.com/category/alumni-stories/
#http://blog.flatironschool.com/category/flatiron-news/
#http://blog.flatironschool.com/category/flatiron-engineering/