require_relative "calculator.rb"
require_relative "menu.rb"

require "colorize"
require "tty-prompt"
require "artii"

# Welcome class containing instructions, welcome message, menu, user input and error handling, conversion of user input into usable forms
class Welcome < TTY::Prompt
    @@prompt = TTY::Prompt.new
    # Opening welcome message and ascii art
    def welcome_message
        system("clear")
        a = Artii::Base.new :font => 'slant'
        puts a.asciify('Make 10').colorize(:white).on_green
        puts ("This app can find solutions for the game Make 10.")
    end 

    # Instructions on how to play the game
    def instructions
        system("clear")
        puts ("Instructions").colorize(:white).on_green
        puts "How the game works:"
        puts "Make 10 is played by taking four numbers, and combining different mathematical operations to solve for a total of 10. Numbers range from 1000 to 9999."
        puts " "
        puts "Rules:"
        puts "Players are free to use addition(+), subtraction(-), multiplication(*), division(/), parentheses() and exponentials(**)."
        puts "Players can't change the order of the numbers, and can't use decimals or square root functions."
        puts " "
        puts "Examples:"
        puts "`1234` can be solved as `1+2+3+4 = 10` and also `(1 * 2 * 3) + 4 = 10`"
        puts "But you cannot solve it as `4+3+2+1 = 10`"
        puts " "
        ask_user_start
    end

    # Give the user three options using TTY Prompt to avoid errors
    def ask_user_start
        quit_status = false
        until quit_status != false
            answer = @@prompt.select("What would you like to do?", %w(calculator instructions quit))
                if answer == "calculator"
                    system("clear")
                    ask_for_digits
                elsif answer == "instructions"
                    system("clear")
                    instructions
                else answer == "quit"
                    puts "Stay well. Come back next time you are stuck on a number!"
                    quit_status = true
                    exit
                end
        end
    end

    # Take user input for calculator using TTY Prompt
    def ask_for_digits
        puts ("Calculator").colorize(:white).on_green
        variables = []
        input = @@prompt.ask("Enter a number between 1000 and 9999 e.g. 1234:") do |q|
            q.convert -> (input) { input.split(/[\s]/) }
            q.convert(:integer, "Invalid input. Try again.")
          end
       
        #  Error handling:  If they put in a negative number 
         begin  
            # Take the input, split by digits, and because that puts them in reverse order it must be reversed again
        variables = input.digits.reverse
        rescue
            system("clear")
            puts "Positive numbers only!"
            ask_for_digits
        end  
        

        if variables.length == 4
            numbers = []
            numbers += object_to_float(variables)
            op = Operations.new
            op.calculate(numbers[0], 0, numbers, [])
            ask_user_start
              
        else
            system("clear")
            puts "Invalid input"
            ask_for_digits
        end
        
    end
# Convert user input into floats to allow for division
    def object_to_float(array)
        array.map(&:to_f)
    end

    # Ability to open straight to instructions and calculator 
    def command_line
        ARGV.each do |arg|
            if arg == "instructions"
            instructions
            elsif arg == "calculator"
            ask_for_digits
            else
            
            end
        end
         
    end

end

open_from_command = Welcome.new
open_from_command.command_line

