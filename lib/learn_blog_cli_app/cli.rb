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

    user_input = gets.chomp.to_i

    if user_input.between?(1, 5)
      print_category(user_input)
      print_post
    else
      puts "Please try again"
      call
    end
  end

  def print_post
    size = LearnBlogCLI::Posts.all.size
    puts ""
    puts "Which post would you like more information on?"
    puts "Enter post number (1-#{size})"

    post_num = gets.chomp.to_i

    if post_num.between?(1, size)
      print_post_info(post_num)
    else
      puts "Please try again"
      print_post
    end
  end

  def print_post_info(input)
    post = LearnBlogCLI::Posts.all[input-1]
    puts ""
    puts "#{post.name}"
    puts "Written by : #{post.author}"
    puts ""
    puts "#{post.description}..."
    puts ""
    puts "Please visit : "
    puts "#{post.url}"
    puts "For complete post"
    puts ""
    puts "Would you like more info on another post? (Y/N)"

    answer = gets.strip.upcase

      if answer == "Y"
        LearnBlogCLI::Posts.clear
        call
      else
        puts "Goodbye!!"
      end
  end

  def print_category(input)
    scrape_category = LearnBlogCLI::Scraper.new.make_category(input)
      puts ""
    if input == 1 
      puts "---------- 1. Learning to Code Blog Posts ----------"
    elsif input == 2
      puts "---------- 2. Career Advice Blog Posts ----------"
    elsif input == 3
      puts "---------- 3. Alumni Stories Blog Posts ----------"
    elsif input == 4
      puts "---------- 4. Flatiron News Blog Posts ----------"
    elsif input == 5
      puts "---------- 5. Flatiron Engineering Blog Posts ----------"
    end
      puts ""
      scrape_category
      show_posts
  end

  def show_posts
    puts ""
    puts "---------- Current Posts ----------"
    puts ""
    LearnBlogCLI::Posts.all.each.with_index(1) do |posts, i|
      puts "#{i}. #{posts.name}"
    end
    puts ""
  end
        
end