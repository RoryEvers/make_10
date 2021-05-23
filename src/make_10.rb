require_relative "calculator.rb"
require_relative "openingmessages.rb"

welcome = Welcome.new

welcome.welcome_message
welcome.ask_user_start

op = Operations.new

# bla bla input
# we have 4 numbers
# (send to a class that works out all combinations of numbers) - output (a)(b)(c)(d), (a o b) o c o d
# a o b o (c o d)

# goal 10
# input : 1,2,3,4
# options do you want to play
#     input 4 numbersd
#     do you want to play again


# Classes ideas:
#  Make 10 - welcome message, instructions, (will call for input), will call for calculator
#  Input - 
#  calculator 
# operations [+, -, *, **, /]

# 4 variables
# a = 1
# b = 2
# c = 3
# d = 4

# (a)o(b)o(c)o(d) - 1,1,1,1 also a can be + or - 
# (a)o(boc)(o)(d)  - 1 and 2 and 1, some reduncacny because boc only necessary to check for some operations and not all
# (a)o(b)o(cod) - 1 and 1 and 2
# (aob)o(c)o(d) - 
# testvar = variables.new

a = $digits[0]
b = $digits[1]
c = $digits[2]
d = $digits[3]

# a = testvar[0]
# b = testvar[1]
# c = testvar[2]
# d = testvar[3]



# puts "#{a} #{opps_ab[o1_index]} #{b} #{opps_fc[o2_index]} #{c} #{opps_sd[o3_index]} #{d}"
# total = a operations[o1_index] b operations[o1_index] c operations[o1_index] doperations
# total = (pn)(a)(o1)(b)(o2)(c)(o3)(d)
# total = (a)(o1)(b)(o2)(c)(o3)(d)
# pn = "+"

# solutions = []
# example solution = [[1, +, 2, +, 3, +, 4]]
# for each 
# ends up looking like 1 + 2 + 3 + 4 = 10



total = 0
first2 = 0.00
second2 = 0.00

opps_ab = [op.add(a,b), op.subt(a,b), op.div(a,b), op.mult(a,b), op.exp(a,b)]
opps_fc = [op.add(first2, c), op.subt(first2, c), op.div(first2, c), op.mult(first2, c), op.exp(first2, c)]
opps_sd = [op.add(second2,d), op.subt(second2,d), op.div(second2,d), op.mult(second2,d), op.exp(second2,d)]

# arrayofoperations = [op.add(total, num1), op.subt(total, num1), op.div(total, num1), op.mult(total, num1), op.exp(total, num1)]

# [{+: op.add(a,b)}]


ab_index = 0
fc_index = 0
sd_index = 0

printarray = ["+", "-", "/", "*", "**"]


while ab_index < 5

        first2 = opps_ab[ab_index]
        fc_index = 0

            while fc_index < 5
                opps_fc = [op.add(first2, c), op.subt(first2, c), op.div(first2, c), op.mult(first2, c), op.exp(first2, c)]
                second2 = opps_fc[fc_index]
                sd_index = 0

                    while sd_index < 5
                        opps_sd = [op.add(second2,d), op.subt(second2,d), op.div(second2,d), op.mult(second2,d), op.exp(second2,d)]
                        total = opps_sd[sd_index]
                        # sd_index += 1
                        if total == 10
                        # puts "#{a.to_i} a#{ab_index.to_i} #{b.to_i} b#{fc_index.to_i} #{c.to_i} c#{sd_index.to_i} #{d.to_i} = 10"
                        puts "#{a.to_i} #{printarray[ab_index]} #{b.to_i} #{printarray[fc_index]} #{c.to_i} #{printarray[sd_index]} #{d.to_i} = 10"

                        end
                        sd_index += 1
                    end
                fc_index += 1  
                end
        ab_index +=1
    end

    welcome.ask_user_start




    # while ab_index > 4
    #     break
    # end


#     until o1_index > 4 
#     first2 = opps_ab[o1_index]
#         until o2_index > 4 
#             second2 = opps_fc[o2_index]
#                 while o3_index < 5
#                     total = opps_sd[o3_index]
#                     o3_index += 1
#                 end
#             o2_index += 1
#             o3_index = 0
#         end
#         o1_index += 1
#         o2_index = 0
#     end
# elsif total == 10
#     puts "found solution"
# #     play_status = "no"
# end
# # print the array 

# if no solutions found print "no solutions found"
# ask if they would like to try different numbers





# end

#  while play_status == "no"
#     puts "Thanks for playing"
#  end




#         As a game
#         com[puter generates random valid number and solves it, if it cant solve then it chooses a new number
#     shows the numnber to the user and gives them a chance to solve it
# then the user can choose to see the answer]
# computer finds all solutions for the 4 numbers for 10, cant change order of numbers
# more complicated version would include parentheses options e.g. (a + b) * c + def
