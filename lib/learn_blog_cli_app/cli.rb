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
    print_post
  end

  def print_post
    puts ""
    puts "Which post would you like more information on?"
    puts "Enter post number (1-#{LearnBlogCLI::Posts.all.size}):"

          begin
          post_num = gets.chomp
          post_num = Integer(post_num)
          rescue
            puts "Please enter a valid post number (1-#{LearnBlogCLI::Posts.all.size}:"
            retry
          end

    print_post_info(post_num)
  end

  def print_post_info(input)
    print LearnBlogCLI::Posts.print_post_info(input)
  end

  def print_category(input)
      puts ""
    if input == 1 
      puts "---------- 1. Learning to Code Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(1)
      show_posts
    elsif input == 2
      puts "---------- 2. Career Advice Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(2)
      show_posts
    elsif input == 3
      puts "---------- 3. Alumni Stories Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(3)
      show_posts
    elsif input == 4
      puts "---------- 4. Flatiron News Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(4)
      show_posts
    elsif input == 5
      puts "---------- 5. Flatiron Engineering Blog Posts ----------"
      puts ""
      LearnBlogCLI::Scraper.new.make_category(5)
      show_posts
    end


  end

    def show_posts
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