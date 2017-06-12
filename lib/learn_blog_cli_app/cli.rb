class LearnBlogCLI::CLI

  require 'pry'

  def call
    puts "Welcome to the Learn.co blog post BOT!"
    puts "Which blog post category would you like to see?"
    puts "
          1. Learning to code
          2. Career Advice
          3. Alumni Stories
          4. Flatiron News
          5. Flatiron Engineering
         "
    puts "Enter category number:"

          begin
          user_input = gets.chomp
          user_input = Integer(user_input)
          rescue
            puts "Please enter a valid category number (1-5):"
            retry
          end
        

    print_category(user_input)

    puts ""
    puts " Which post would you like more information on?"


  end

  def print_category(input)
      puts ""
    if input == 1 
      puts "---------- 1. Learning to Code Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(1)
      print_post
    elsif input == 2
      puts "---------- 2. Career Advice Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(2)
      print_post
    elsif input == 3
      puts "---------- 3. Alumni Stories Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(3)
      print_post
    elsif input == 4
      puts "---------- 4. Flatiron News Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(4)
      print_post
    elsif input == 5
      puts "---------- 5. Flatiron Engineering Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(5)
      print_post
    end


  end

    def print_post
      print LearnBlogCLI::Posts.list_posts
      #binding.pry

  end
        

        




end


# => "Welcome to the Learn.co blog post bot"
# => "Which blog post category would you like to see?"
# => "1. Learning to code"
# => "2. Career Advice"
# => "3. Alumni Stories"
# => "4. Flatiron News"
# => "5. Flatiron Engineering"