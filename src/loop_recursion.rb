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

operators = []
operators.push(method(:add))
operators.push(method(:subt))
operators.push(method(:mult))
operators.push(method(:div))
operators.push(method(:exp))
# puts operators



a = 1
b = 2
c = 3
d = 4
A = [a, b, c, d] #your 4 numbers that you want to turn into 10
Answers = [] #your set of answers
puts A
#example input [1 2 3 4]
index = 0
A.each_with_index do |x, index|
# for x in A           #1 #1 foreach(x in A) 

    A.each_with_index do |y, (index + 1)| 
        unless y == x 						
            			#2 #3  foreach(y in A != index(x))
            operators.each do |o|     #foreach(o in operators)
			res = recurse(
				o.call(x,y),
                A.delete(x,y)	#  splice([x,y],A),pass the array of numbers except for what has already been used
				createString(nil,o,a,b))
			Answers.push(res)
            end
        end
end
# end
#print out your answers	

Answers.each |a|    #foreach(a in Answers)
	if(a != nil)
		print(a)
    end
			
		#(#2,   #A = [3,4], #"1*2")
recurse(num, remA, str)
    if remA.length == 0  # if(len(remA) == 0)
		if(num == 10)
			return str
		else
			return nil
        end
	#if we still have more numbers to process
	else
        remA.each do |x|   #foreach(x in remA)
            operators.each do |o|  #foreach(o in operators)
				res = recurse(
					o.call(num,x),
					splice(x,remA),
					createString(str,o,num,x)
				)
            end
        end
    end

	
createString(str,operator,a,b)
	if(str == null)
		str = new String()
    end
		
	if(operator == "+" || operator == "-")
		return str+"("+a+operator+b+")"
	else
		return str+ a+operator+b
    end
