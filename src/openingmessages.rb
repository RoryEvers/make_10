require "tty-prompt"

$digits = []

class Welcome < TTY::Prompt
    @@prompt = TTY::Prompt.new
    def welcome_message
        puts "\e[H\e[2J"

        puts "This app can find solutions for the game Make 10."
    end 

    def instructions
        puts "\e[H\e[2J"
        puts "How the game works:"
        puts "Make 10 is played by taking four numbers, and combining different mathematical operations to solve for a total of 10."
        puts " "
        puts "Rules:"
        puts "Players are free to use addition(+), subtraction(-), multiplication(*), division(/), parentheses() and exponentials(**)."
        puts "Players can't change the order of the numbers, and can't use decimals or square root functions."
        puts " "
        puts "Examples:"
        puts "`1234` can be solved as `1+2+3+4 = 10` and also `(1 * 2 * 3) + 4 = 10`"
        puts "But you cannot solve it as `4+3+2+1 = 10`"
        puts " "
    end

    def ask_user_start
         
        answer = @@prompt.select("What would you like to do?", %w(calculator instructions quit))
        if answer == "calculator"
            ask_for_digits
           
        elsif answer == "instructions"
            puts "\e[H\e[2J"
            instructions
            ask_user_start
        else answer == "quit"
            puts "You want to quit"
            # play_status = false
        end
    end

    def ask_for_digits
        # puts "\e[H\e[2J"
        system("clear")
        puts "Input four single digit numbers separated by a space e.g. 1 2 3 4"
        variables = gets.split(/[\s]/)
        # need to ensure there are 4 numbers, each between 0 and 9

        $digits += object_to_float(variables)
       
        # puts $digits
        
        # test1 = Operations.new
        # puts test1.allopp($digits[0], $digits[1])
    end

    def object_to_float(array)
        array.map(&:to_f)
end

end

# test1 = Welcome.new 
# test1.ask_user_start 

