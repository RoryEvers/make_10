require_relative "calculator.rb"
require_relative "openingmessages.rb"
# require_relative "recursion_test.rb"

welcome = Welcome.new
# @op = Operations.new
welcome.welcome_message
welcome.ask_user_start

# calc = Test.new
# calc.calculate(0, -1, $digits, [])
# calc.calculate(0, -1, $digits, [])


calculate(0, -1, $digits, [])
# test1 = welcome.get_digits
# test1 = [1, 2 ,3 ,4]
# calculate(0, -1, @@digits, [])
