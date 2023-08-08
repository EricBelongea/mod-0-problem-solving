# Challenge 1. Create an array of strings, and print only the elements with four characters.

names = ["Justin", "Joseph", "Martin", "Anthea", "Eric"]

names.each do |name|
    if name.length == 4
        p name
    end
end

# In the code above I call the built-in method .length to covert my string into an integer.
# This new integer represting the element in the array is then compared to the desired value. 
p "==============="
# Challenge 2: Start with an array of strings with a mix of uppercase and lowercase letters.
# Print every word in all lowercase letters.

names = ["JusTin", "JosEph", "MArtin", "AnTHEa", "ERIC"]

names.each do |name|
    p name.downcase
end

# Called the .downcase method, takes each element and prints it in... lowercase
p "==============="
# Challenge 3: Write a method or function that removes all instances of the letter s in a string.
# The method or function should accept a string as an argument and return the same string with 
# every instance of the letter s removed.

def remove_s(string)
    p string.tr("s", "")
end

remove_s("sassy")

def remove_s(string)
    p string.delete("s")
end
remove_s("sassy")

# This one is a new method for me. The .tr method (I think of it as TRade) has two arguments
# the selector and replacment. So I selected 's' and replaced it with nothing ''. Another way,
# use delete and that will remove all instances of 'argument'
p "==============="
# Challenge 4 : Start with an array of hobbies. Print out only the words that end in "ing"

hobbies = ["Hiking", "Camping", "Climbing", "Motor Cross", "Disc Golf"]

hobbies.each do |hob|
    if hob.end_with?("ing")
        puts hob
    end
end

# This one took me longer. I found the function that I wanted to use, but was using the 
# wrong syntax. Since we are iteterating through each element in the array we need a method that
# focuses on strings. .end_with? looks at the last specified indexes and determines if they equal.


p "==============="
# Challenge 5: Start with an array of travel destinations. Print every travel destination in 
# alphabetical order embedded in a sentence using string interpolation. For example, 
# if the destination is "New York City", print something like "The next place I want to visit 
# is New York City!"
p "==============="
# Challenge 6: Given a sentence with only lowercase letters, print the same sentence with the 
# first letter of every word capitalized. For example, if you were given "Turing is the best", 
# return "Turing Is The Best" instead
p "==============="
# Challenge 7: Write a method or function that determines how much a person will pay in taxes 
# in the United States based on their annual income. The method or function should accept a 
# number representing the individual's annual income as an argument and return the amount they 
# will owe in taxes for that year