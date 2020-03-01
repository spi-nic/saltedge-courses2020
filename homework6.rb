#  problem 1
# Use the each method of Array to
# iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# one line version
arr.each { |el| puts el }

# multi-line version
arr.each do |element|
  puts element
end

# problem 2
# Same as above, but only print out values greater than 5.
# one line version
arr.each { |element| puts element if element >= 5 }

# multi-line versioon
arr.each do |number|
  while number >= 5
    puts number
    break
  end
end
puts

# problem 3
# Now, using the same array from #2,
# use the select method to extract
# all odd numbers into a new array.
odds=[]
arr.each do |number|
  if number.odd?
    #odds.push(number)
    #odds<< number if number.odd?
    odds<< number
  end
end
print odds
puts


# problem 4
# Append 11 to the end of the original array.
# Prepend 0 to the beginning.
arr <<11
arr.unshift(0)
print arr
puts

# problem 5
# Get rid of 11.
# And append a 3.
arr.delete(11)
arr<< 3
print arr

puts
# problem 6
#Get rid of duplicates without specifically removing any one value.
print arr.uniq


# problem 7
#Tell what's the major difference between an Array and a Hash?
#
# Arrays are ordered
# Array index starts at 0
#
# Hash are unordered
# HAsh is a collection  of key-value pairs
# Hash index can be any object type
# Hash enumerate their values in the order that the corresponding  keys were inserted
puts

# problem 8
#Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
h = { a:1, b:2, c:3, d:4 }
puts


# problem 9
#Can hash values be arrays? Yes  hash = {}; hash = { "1":[1,2,3], "2":[ "a", "b", "c"], "c":["ruby", 11, 22, "rails"]}
# Can you have an array of hashes? (give examples) Yes
#
h= {"firstname" => "Nicolae", "lastname" => "SPINU", "age" => "20", "city"=>"CHISINAU"}
h2= {"firstname" => "OLESEA", "lastname" => "SPINU", "age" => "18", "city"=>"MOSKOW"}
array =[]
array << h
array << h2
print array
puts


# problem 10
#Given the following data structures.
# Write a program that copies the information from the array into the empty hash that applies to the correct person.
#
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

element =contact_data[0]
contacts["Joe Smith"]={"email"=> element[0], "address"=> element[1], "phone"=> element[2]}
 element1 =contact_data[1]
contacts["Sally Johnson"]={"email"=> element1[0], "address"=> element1[1], "phone"=> element1[2]}
puts contacts
puts


# problem 11
# Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email and Sally's phone number?
puts contacts["Joe Smith"]["email"]
puts contacts["Sally Johnson"]["phone"]
puts

# problem 12
# Use Ruby's Array method delete_if and String method start_with?
# to delete all of the words that begin with an "s" in the following array.
#arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }
print arr
puts

#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word|word.start_with?("s","w") }
print arr
puts

# problem 13
#Take the following array:
#a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
arr = []
 #arr+= a.each { |el| el.split(" ") }   PLEASE Explain Why this not working????
a.map do |word|
  tmp=word.split(" ")
    arr+=tmp
end
print arr
puts


# problem 14
#What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
puts

# problem 15
# Programmatically loop or iterate over the contacts hash from exercise 10,
# and populate the associated data from the contact_data array.
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# some helpful methods might be the Array shift and first methods.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
arr_f=["email", :"address", "phone"]
contacts.each_with_index do |(key, value), index|
  arr_f.each do |element|
    value[element] =contact_data[index].shift
  end
end
print contacts











