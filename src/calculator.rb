require "terminal-table"
require 'colorize'

# Operations class which contains mathematical operations and calculator
class Operations
    
    def add(num1, num2)
        num1 + num2
    end

    def subt(num1, num2)   
        num1 - num2
    end

    def mult(num1, num2)
        num1 * num2
    end

    def div(num1, num2)  
        num1 / num2
    end

    def exp(num1, num2)
        num1 ** num2
    end

    # Method to allow Calculator to perform 5 operations 
    def allopp(num1, num2)
        ad = add(num1, num2) 
        s = subt(num1, num2)
        d = div(num1, num2)
        m = mult(num1, num2)
        ex = exp(num1, num2)
        all = [ad, s, d, m, ex]
        return all
    end

    # Calculator to take arguments from menu and check for possible solutions 
     def calculate(run_total, index, digits, return_string)
        # An array to be used to insert symbols for legibility when printing solutions
        print_array = ["+", "-", "/", "*", "**"]
        # Until final digit
        if index < 3
            # Call allopps to calculate all possibile totals using the variables running total (Starting first digit) and the next digit 
            array = allopp(run_total, digits[(index+1)])
            
            array.each_with_index do |x, i|
                # create a new array to store 
                newer_string = return_string.dup
                # create a variable to store the operation that took place
                symb = (print_array[i].to_s)
                # push the symbol 
                newer_string.push(symb)   
                # push the digit
                newer_string.push((digits[(index+1)]).to_i)
                # call this method again, with running total now element x from last time, and index is 1 higher than last time
                calculate(x, (index+1), digits, newer_string)
            end
            else
                # Once final digit, send to check if running total = 10
                check(run_total, return_string, digits)
        end
    end
    
    # Separate method to check the result and print the solution if true
    def check(result, new_string, digits)
        if result == 10
            # add the first digit to string
            new_string.unshift(digits[0].to_i)
            # send to terminal table rows
            rows = []
            rows << [new_string.join(' '), " = #{result.to_i}"]
            table = Terminal::Table.new :rows => rows
            puts table
            
        else
            
        end
    end
end