class LearnBlogCLI::CLI

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


  end

  def print_category(input)
      puts ""
    if input == 1 
      puts "---------- 1. Learning to Code Blog Posts ----------"
      puts ""
    elsif input == 2
      puts "---------- 2. Career Advice Blog Posts ----------"
      puts ""
    elsif input == 3
      puts "---------- 3. Alumni Stories Blog Posts ----------"
      puts ""
    elsif input == 4
      puts "---------- 4. Flatiron News Blog Posts ----------"
      puts ""
    else
      puts "---------- 5. Flatiron Engineering Blog Posts ----------"
      puts ""
    end


  end
        

        




end


# => "Welcome to the Learn.co blog post bot"
# => "Which blog post category would you like to see?"
# => "1. Learning to code"
# => "2. Career Advice"
# => "3. Alumni Stories"
# => "4. Flatiron News"
# => "5. Flatiron Engineering"