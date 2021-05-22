require_relative "calculator.rb"

# op = Operations.new

# total = op.add(1,2)
# puts total
total = 0
def recursion_test(digits,run_total)
    op = Operations.new
#    digits_remaining =  digits.length 
    index = 0
#    puts "run total #{run_total}"
    # if digits_remaining == 0 || digits[index] == digits[-1]
    if digits[index] == digits[-1]
        puts "finished calculating"
    else 
        total = op.add(digits[index], digits[(index + 1)]) 
        # total += op.add(run_total, digits[index])
        # puts digits[index]
        digits.shift
        
        puts "run total #{run_total}"
        run_total += total
        # if digits_remaining > 1
            recursion_test(digits, run_total)
        # end
    end
end

test = [1,2,3,4]
recursion_test(test, 0)

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

#     def Loops(thisloopindex, total, digits, goal)
#         # needs to have this loop index defined on the outside
#         # needs to be given total of previous operations (starting with 0)
#         # each loop needs to be 
#         # will need input on type of pattern (abcd) (ab)(c)(d) etc for printing purposes
#         # will need an array of variables (abcd) to select from
#         # array of variables will need an index number
#         running_total = 0
#         while thisloopindex < 5
#             # opps_fc = [op.add(first2, c), op.subt(first2, c), op.div(first2, c), op.mult(first2, c), op.exp(first2, c)]
#             # arrayofoperations 
#             total = arrayofoperations[thisloopindex]
#             thepreviousnumber_andthisnumber_currenttotal = arrayofoperations[thisloopindex]
#             lowerlevelloopindex = 0
#             # if digits remaining doesnt equal 0, then call for a new loop within here
#             # digits -= 1
#             # call_loop(digits)
#             # if total = 10 then now is the time to print etc
#             thisloopindex += 1  
#         end
        
#     end



# Recursive
# def recursive_loop(current_total, arrayofoperations, arrayofvalues, goal)
# (current total, digit)
# digit is current digit in variables, and the next loop should be the following one index + 1 until index = index-1