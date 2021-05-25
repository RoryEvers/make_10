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

  
@printArray = ["+", "-", "/", "*", "**"]


def calculate(run_total, index, digits, returnString)
   
    # Until final digit
    if index < 3
        # Call allopps to calculate all possibile totals using the variables running total (Starting 0) and current digit (index starts at -1 to enable to then start at 0 while also using a +1 on each loop)
        array = @op.allopp(run_total, digits[(index+1)])
        # if index = -1 array.each_with_index 
        array.each_with_index do |x, i|
            # create a new array to store 
            newerString = returnString.dup
            # create a variable to store the operation that took place
            symb = (@printArray[i].to_s)
            # push the symbol 
            newerString.push(symb)   
            # push the digit
            newerString.push((digits[(index+1)]).to_i)
            # call this method again, with running total now element x from last time, and index is 1 higher than last time
            calculate(x, (index+1), digits, newerString)
        end
        else
            # Once final digit, send to check if running total = 10
            check(run_total, returnString, digits)
     end
 end

def check(result, newString, digits)

    if result == 10
        # newString.shift()
        newString.unshift(digits[0])
        puts newString.join(' ') + " = #{result.to_i}"
        
    else
    end
end

# op = Operations.new
test1 = [5, 5 ,5 ,5]
calculate(test1[0], 0, test1, [])