require_relative "../calculator"
# require_relative "../loops.rb"
# require_relative "../pattern.rb"
require_relative "../openingmessages"
require_relative "../index"


describe Welcome do
    welcome = Welcome.new
    it "should print the welcome message" do
        expect(welcome.welcome_message).to eq(puts "Welcome")
    end

    it "should print the instructions" do
        expect(welcome.instructions).to eq(puts "Instructions")
    end

end

# describe Operations do 
#     operation = Operations.new
#     it "should return the result of a mathematical operation" do
#         expect(operation.add(1,2)).to eq(3)  
#     end
#     it "should return the result of a mathematical operation" do
#         expect(operation.subt(1,2)).to eq(-1)  
#     end

# end
