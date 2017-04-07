class Scraper

  def get_page
    Nokogiri::HTML(open("http://blog.flatironschool.com/"))
  end 
  
  def scrape_blogs
    self.get_page.css("")
  end

end 