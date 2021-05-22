require_relative "calculator.rb"
require_relative "openingmessages.rb"

welcome = Welcome.new

welcome.welcome_message
# welcome.instructions
welcome.ask_user_start
# here is where I ask the user 





# op = Operations.new








# a = 1.0
# b = 2.0
# c = 2.0
# d = 4.0






# op 
# play_status = "yes"

# total = 0
# # total = (a)(o1)(b)(o2)(c)(o3)(d)
# # array of operations with 
# first2 = 0.00
# second2 = 0.00

# opps_ab = [op.add(a,b), op.subt(a,b), op.div(a,b), op.mult(a,b), op.exp(a,b)]
# opps_fc = [op.add(first2, c), op.subt(first2, c), op.div(first2, c), op.mult(first2, c), op.exp(first2, c)]
# opps_sd = [op.add(second2,d), op.subt(second2,d), op.div(second2,d), op.mult(second2,d), op.exp(second2,d)]

# # [{+: op.add(a,b)}]


# ab_index = 0
# fc_index = 0
# sd_index = 0


# if total != 10
# # call loops with array of numbers and 
#     # puts "total not 10 yet"
#     while ab_index < 5.0

#         first2 = opps_ab[ab_index]
#         fc_index = 0
#             while fc_index < 5
#                 opps_fc = [op.add(first2, c), op.subt(first2, c), op.div(first2, c), op.mult(first2, c), op.exp(first2, c)]
#                 second2 = opps_fc[fc_index]
#                 sd_index = 0
#                     while sd_index < 5
#                         opps_sd = [op.add(second2,d), op.subt(second2,d), op.div(second2,d), op.mult(second2,d), op.exp(second2,d)]
#                         total = opps_sd[sd_index]
#                         sd_index += 1
#                         if total == 10
#                         puts "#{a.to_i} a#{ab_index.to_i} #{b.to_i} b#{fc_index.to_i} #{c.to_i} c#{sd_index.to_i} #{d.to_i} = 10"
#                         end
#                     end

#                 fc_index += 1  
#                 # puts "#{first2}, #{second2}" 
#             end
           
            

#         ab_index +=1
#     end
