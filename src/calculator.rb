require "terminal-table"
require 'colorize'
# require "colorized_string"

class Operations
    # @@table = Terminal::Table.new
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

    def allopp(num1, num2)
        ad = add(num1, num2) 
        s = subt(num1, num2)
        d = div(num1, num2)
        m = mult(num1, num2)
        ex = exp(num1, num2)
        all = [ad, s, d, m, ex]
        return all
    end

     def calculate(run_total, index, digits, return_string)
        print_array = ["+", "-", "/", "*", "**"]
        # Until final digit
        if index < 3
            # Call allopps to calculate all possibile totals using the variables running total (Starting 0) and current digit (index starts at -1 to enable to then start at 0 while also using a +1 on each loop)
            array = allopp(run_total, digits[(index+1)])
            # if index = -1 array.each_with_index 
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
    
    def check(result, new_string, digits)

        if result == 10
            # newString.shift()
            new_string.unshift(digits[0].to_i)
            # puts newString.join(' ') + " = #{result.to_i}"
            rows = []
            rows << [new_string.join(' '), " = #{result.to_i}"]
            table = Terminal::Table.new :rows => rows
            puts table
        else
        end
    end
end