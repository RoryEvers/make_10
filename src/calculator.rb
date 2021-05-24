class Calculator
    def initialize(goal, operations, numbers)
        
    end
end

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



    def allopp(num1, num2)
        ad = add(num1, num2) #calc count = 0
        s = subt(num1, num2)
        d = div(num1, num2)
        m = mult(num1, num2)
        ex = exp(num1, num2)
        all = [ad, s, d, m, ex]
        # return ad, s, m, d, ex
        return all
    end

    # def insane(num1, num2)
    #     ad = add(num1, num2)
    #     s = subt(num1, num2)
    #     m = mult(num1, num2)
    #     d = div(num1, num2)
    #     ex = exp(num1, num2)
    #     all = [ad, s, m, d, ex]
    #     # return ad, s, m, d, ex
    #     return all
    # end


end

# test1 = Operations.new
# puts test1.allopp(2.0,4.0)








# def sum_and_difference(num1,num2)
#     # your code here
#     include Calculator
#     add_subtract = {}
#     add_subtract[:sum] = add(num1, num2)
#     add_subtract[:difference] = subtract(num1, num2)
#     puts add_subtract
#     add_subtract
# end

# def sum_and_difference(num1,num2)
#     # your code here
#     include Calculator
#      Hash[:sum, Calculator.add(num1, num2), :difference, Calculator.subtract(num1, num2)]
# end

# def multiply_all(values)
#     # your code here
#     include Calculator
    
#     # Get the array
#     # pull out first 2 numbers, multiply them (use Calculator.multiply)
#     # assign them to a 'running total' variable
#     # go back to the array and grab the third number, repeat so on so forth, keep adding to running total


#     # running_total = multiply(values[0], values[1])
#     running_total = 1
    
#     length = values.length

#     index_pos = 0

#     while index_pos <= (length - 1)
#         running_total = multiply(values[index_pos], running_total)
#         index_pos += 1
#     end

#     puts running_total
#     running_total

# end

# sum_and_difference(5, 4)
# multiply_all([1,2,3,4])