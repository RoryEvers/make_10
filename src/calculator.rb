# class Calculator
#     def initialize(goal, operations, numbers)
        
#     end
# end

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
end


# class Calculator 

#     @printArray = ["+", "-", "/", "*", "**"]
# def calculate(run_total, index, digits, returnString)
    
#     # Until final digit
#     if index < 3
#         # Call allopps to calculate all possibile totals using the variables running total (Starting 0) and current digit (index starts at -1 to enable to then start at 0 while also using a +1 on each loop)
#         array = @op.allopp(run_total, digits[(index+1)])
#         array.each_with_index do |x, i|
#             # create a new string 
#         newerString = returnString.dup
#         symb = (@printArray[i].to_s)
#         newerString.push(symb)   
#         newerString.push((digits[(index+1)]).to_i)
#         calculate(x, (index+1), digits, newerString)
#         end
#         else
#             check(run_total, returnString)

#      end
#  end

# def check(result, newString)

#     if result == 10
#         newString.shift()
#         puts newString.join(' ') + " = #{result.to_i}"
        
#     else
#     end
# end
# end
