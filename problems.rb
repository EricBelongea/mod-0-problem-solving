# Challenge 1. Create an array of strings, and print only the elements with four characters.

names = ["Justin", "Joseph", "Martin", "Anthea", "Eric"]

names.each do |name|
    if name.length == 4
        p name
    end
end
p "==============="
# In the code above I call the built-in method .length to covert my string into an integer.
# This new integer represting the element in the array is then compared to the desired value. 

# Challenge 2: Start with an array of strings with a mix of uppercase and lowercase letters.
# Print every word in all lowercase letters.

names = ["JusTin", "JosEph", "MArtin", "AnTHEa", "ERIC"]

names.each do |name|
    p name.downcase
end
p "==============="
# Called the .downcase method, takes each element and prints it in... lowercase

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