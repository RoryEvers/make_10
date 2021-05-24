require_relative "calculator.rb"

# op = Operations.new
@op = Operations.new


# user inputs 4 digits
# they are converted to floats

# either they are individual variables or an array ???

# there is a total that currently equals 0
# take the total and the first variable and send both to the method to add created in the calculator class(repeat until there are no more digits)
#       (repeat until there are no more digits) take the result and the next digit and send it to the method to add again
# once the total has been added to the final digit, if the total equals 10, then print the equation that has taken place e.g 1 + 2 + 3 + 4 = 10
# once the final digit has been added to total, return to the previous total, when all digits except one had been added, and then instead subtract the final variable 
# if it now equals 10 print equation etc
# repeat for all available operations on final digit and print whenever total = 10

# once all operations have been performed on final digit, then take one step backwards and only perform add on the first 2 digits, and now perform subtract on the third digit, and add on the fourth digit, and then all subsequent operations on the final digit printing whenever the total = 10
# continue moving through all operations on the third digit whilst more quickly moving through all operations on the fourth digit
# once all operations with the third digit have been tried with all fourth digit operations, repreat this process on all second digit operations, and subsequently on all first digit operations
# once all first digit operations have completed and all equations that equal 10 have been printed, the method will cease to run, and if there were no solutions found then print "No solutions found" and give the user the opportunity to input different numbers

# partial solutions could be saved in a cache
# the loop should call itself for all subsequent operations


# def test1(run_total, index)
#     @op.allopp(run_total, digits[index + 1])


# end
# index = -1
# run_total =0

# def recursion_test(digits, run_total, index)
# # puts "run_total before if #{run_total}"
#     if @index > 3 
#         puts "finished calculating"
#     else
#         arrayofresults = @op.allopp(run_total, digits[@index])
#         newtotals = arrayofresults.map { |n| n + run_total }
#         # puts newtotals

#     for newtotals.each do |x|
#         nexttotals = @op.allop(x, digits@[index+1])
#     end
#     puts nexttotals

        


#         # def allopp(num1, num2)
#         #     ad = add(num1, num2)
#         #     s = subt(num1, num2)
#         #     m = mult(num1, num2)
#         #     d = div(num1, num2)
#         #     ex = exp(num1, num2)
#         #     all = [ad, s, m, d, ex]
#         #     # return ad, s, m, d, ex
#         #     return all
#         # end




#         # @index += 1
#         # test1 = newtotals[0]
#         # test2 = newtotals[1]
#         # test3 = newtotals[2]
#         # test4 = newtotals[3]
#         # test5 = newtotals[4]
#         # puts test5
#         # @op.allopp(run_total, digits[@index])
#         # for newtotals.each do |e|
#             # test1 = (&:recursion_test(digits, e, @index))
#             # puts test1
#         # end
#     end
#         # puts test1     
# end


# @index = 0
digits = [1.0,2.0,3.0,4.0]
# puts digits.map { |n| n * 2 }
# puts digits
# run_total = 0
# @index = 0


def calculate(run_total, index, digits, returnString)
    # puts returnString.join(" ")
    printArray = ["+", "-", "/", "*", "**"]
    
    newString = returnString
     currentIndex = index
         if currentIndex < 3
             calculationCount = 0
             array = @op.allopp(run_total, digits[(currentIndex+1)])
             newString.push(digits[(currentIndex+1)])

             array.each do |x|
             newString.push(printArray[calculationCount])
             calculationCount += 1
             calculate(x, (currentIndex+1), digits, newString)
             end
         else
             newArray = @op.allopp(run_total, digits[3])
             newArray.each do |x|
             check(x, newString)
             returnString = []
         end
     end
 end

# printarray = ["+", "-", "/", "*", "**"]

# puts a
# b = digits[1]
# c = digits[2]
# d = digits[3]

def check(result, newString)
    
    if result == 10
        # puts "calculation completed #{printarray[0]}}"
        puts newString.join(' ') + "= 10"
        returnString = []
    else
        returnString = []
    end
end

calculate(0, -1, digits, [])

# test1(0, -1)
# puts test1
# @arrayofoperations = [@op.add(run_total, digits[@index]), @op.subt(run_total, digits[@index]), @op.div(run_total, digits[@index]), @op.mult(run_total, digits[@index]), @op.exp(run_total, digits[@index])]


# recursion_test(digits, run_total, @index)




# puts @arrayofoperations

# Each person waiting for a reply:
# receives the message
# adds themselves to the count
# responds to the person tapping them

# There’s nobody left in line, don’t ask
# There’s someone in line, ask them
# What are the repetitive parts of your strategy?
# When did things stop repeating? Why?


# def arrayofoperationsx(total,num1)
#     arrayofoperations = [op.add(total, num1), op.subt(total, num1), op.div(total, num1), op.mult(total, num1), op.exp(total, num1)]
# end

# num1 = 0
# op = Operations.new
# thisloopindex = 0
# goal = 10
# total = 0
# digits = [1.0, 2.0, 3.0, 4.0]
# dig_index = 0
# num1 = digits[dig_index]
# $arrayofoperations = [op.add(total, num1), op.subt(total, num1), op.div(total, num1), op.mult(total, num1), op.exp(total, num1)]

# def test_loop
# total = 0
# dig_index = 0
# digits = [1.0, 2.0, 3.0, 4.0]
# num1 = digits[dig_index]
#     while dig_index < 4
#     total = $arrayofoperations[0]
#     dig_index += 1
#     # puts total
#     end
# # test_loop
#     # end
# end

# test_loop


    # def loops_call(thisloopindex, running_total, digits)
        # needs to have this loop index defined on the outside
        # needs to be given total of previous operations (starting with 0)
        # each loop needs to be 
        # will need input on type of pattern (abcd) (ab)(c)(d) etc for printing purposes
        # will need an array of variables (abcd) to select from
        # array of variables will need an index number

    #     dig_index = 0
    #     running_total = 0

    #     thisloopindex = 0
    #     while thisloopindex < 5 
            
            
    #         num1 = digits[dig_index]
    #         num2 = digits[(dig_index + 1)]
    #         total += arrayofoperations[num1, num2]
    #         # total = arrayofoperations[thisloopindex]

    #         thepreviousnumber_andthisnumber_currenttotal = arrayofoperations[thisloopindex]
    #         lowerlevelloopindex = 0
    #         loops_call(lowerlevelloopindex)
    #         # if digits remaining doesnt equal 0, then call for a new loop within here
    #         # digits -= 1
    #         # call_loop(digits)
    #         # if total = 10 then now is the time to print etc
    #         thisloopindex += 1  
    #     end
        
    # end
    

# loops_call(thisloopindex, total, digits)

# Recursive
# def recursive_loop(current_total, arrayofoperations, arrayofvalues, goal)
# (current total, digit)
# digit is current digit in variables, and the next loop should be the following one index + 1 until index = index-1