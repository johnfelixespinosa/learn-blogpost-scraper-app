class LearnBlogCLI::Scraper

  def get_page
    Nokogiri::HTML(open("http://blog.flatironschool.com/"))
  end 
  
  def scrape_blogs(url)
    self.get_page.css("url")
  end

end 


#http://blog.flatironschool.com/category/learning-to-code/
#http://blog.flatironschool.com/category/career-advice/
#http://blog.flatironschool.com/category/alumni-stories/
#http://blog.flatironschool.com/category/flatiron-news/
#http://blog.flatironschool.com/category/flatiron-engineering/