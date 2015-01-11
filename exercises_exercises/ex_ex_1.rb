

#exercise 1


array = [1,2,3,4,5,6,7,8,9,10]


array.each {|x| puts x}


#exercise 2

array.each do |var| 

  if var > 5 

    puts var

  end

end


#exercise 3



array2 = array.select {|num| num.odd? }



#exercise 4


#array << 11  #same result

array.push(11)

#forgot to prepend zero at beginning


#exercise 5

array.pop

array.push(3)

puts array

#exercise 6

array.uniq!

#exercise 7

# an array is an order list of types 

# a hash is a data strucure that consists of key - value pairs
# if you are using symbols for the keys, you can use the new format

# Hash = {value: 50, ... }

#exercise 8

Hash_One = {"Batman" => 100, "Superman" => 200, "Punisher" => 300}

#Access: Hash_One["Batman"]

Hash_Two = {Batman: 100, Superman: 200, Punisher: 300} # Note, you can use if all

#keys are symbols

#Access: Hash_Two[:Batman]

############ACTUAL ANSWER#######################
#Hash_Three = {:Batman => 100, :Superman => 200, :Punisher => 300}

#exercise 9

h = {a:1, b:2, c:3, d:4}

#1 
h[:b]

#2
h[:e] = 1 #obvious mistake

#3
h.delete_if{|k,v| v < 3.5}

#exercise 10

# Yes and Yes

#Hash value as array: 
a = ["can fly"]

e = {Batman: a} #=> {:Batman=>["can fly"]}

#Array of Hashes
a_of_hash = [Hash_One, Hash_Two] 
#=> {"Batman"=>100, "Superman"=>200, "Punisher"=>300}, {:Batman=>100, :Superman=>200, :Punisher=>300}]

#exercise 11

#For rails documentation, I like http://api.rubyonrails.org/ the most. 
#It seems more user friendly then the only other website I could find:
#http://apidock.com/rails/browse

#exercise 12

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]


contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]

#apparently I did this wrong is should have been: 

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


#exercise 13 

#Based on the correct solution to the previous problem

contacts["Joe Smith"][:phone]
contacts["Sally Jonson"][:email]

#exercise 14 #Note had to reference earlier book chapters

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
contact_dk = {email: {} ,address:{} ,phone:{}}

contact_dk.each do |key,value|

       contact_dk.store(key, contact_data.first)
       contact_data.shift

end

contacts["Joe Smith"] = contact_dk

puts contacts

#Could have been more elegant



#exercise 15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']



arr.delete_if{|word| word.start_with?("s")}



arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


arr.delete_if{|word| word.start_with?("s") || word.start_with?("w")}


#Note according to the answer, you can do this:
#arr.delete_if { |word| word.start_with?("s", "w") }


#exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


a_2 = a.map{|value| value.split}

a_3 = a_2.flatten


#Note, I looked up the string class, if that matters

#exercise 17
# If the version of Ruby used is newer, the hashes are not equivalent 
# So the output will be "These hashes are not the same!"
#If it is older, order does not matter, so the output will be:
#"These hashes are the same!"


#I was wrong, they are equal, I guess the newer version can keep track 
# or order, but it doesn't change the comparison results






