# Challenge 1. Create an array of strings, and print only the elements with four characters.
# Overall Goal: Print the strings with a .length of 4

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
# Overall Goal: Print every word in all lowercase letters.

names = ["JusTin", "JosEph", "MArtin", "AnTHEa", "ERIC"]

names.each do |name|
    p name.downcase
end

# Called the .downcase method, takes each element and prints it in... lowercase
p "==============="
# Challenge 3: Write a method or function that removes all instances of the letter s in a string.
# The method or function should accept a string as an argument and return the same string with 
# every instance of the letter s removed.
#Overall Goal: Revome all instances of 's' from the input string

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
# Overall Goal: Print out only the words that end in "ing"

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
# Overall Goal: Print an alphebetized array interpolated in a string.

places = ["Alaska", "Norway", "Chamonix", "Rock Lands, South Africa", "Bugaboos"]

def travel(array)
    sorted_array = array.sort
    sorted_array.each do |place|
        p "I want to visit #{place}"
    end
end

travel(places)
# I created a method to be called upon that takes one argument. I created a new variable that 
# equals the argument sorted. then iterated through the new sorted argument and interpolated 
# it with the print statement.
p "==============="
# Challenge 6: Given a sentence with only lowercase letters, print the same sentence with the 
# first letter of every word capitalized. For example, if you were given "Turing is the best", 
# return "Turing Is The Best" instead
#Overall Goal: Capitalize the first letter of each word in a sentence.

sentence = "Turing is the best."

def no_cap(words)
    sub_array = words.split(" ")
    sub_array.each do |word|
        word.capitalize!
    end
    p sub_array.join(" ")
end

no_cap(sentence)

# So I knew that I wanted to use the .capitalize method, but that only applies to the first letter
# of a string. Step one was to seperate the sentence string into an array of strings that make 
# the sentence whole. So I used the .split method splitting them at the space between the words.
# following that I .capitalize! the first letter of each word. Last, I .join the array of strings
# adding back the space between words " ". 

p "==============="
# Challenge 7: Write a method or function that determines how much a person will pay in taxes 
# in the United States based on their annual income. The method or function should accept a 
# number representing the individual's annual income as an argument and return the amount they 
# will owe in taxes for that year
#Overall Goal: Print an interpolated string showing how much one owes in taxes based on annual income. 
#Snarky Goal: Show why we love paying taxes.

salary_37 = 1000000
salary_35 = 300000
salary_32 = 175000
salary_24 = 100000
salary_22 = 50000
salary_12 = 38000
salary_10 = 8000

def taxes(income)
    if income >= 539900
        withheld = income * 0.37
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    elsif income >= 215950
        withheld = income * 0.35
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    elsif income >= 170050
        withheld = income * 0.32
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
        p "money"
    elsif income >= 89075
        withheld = income * 0.24
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    elsif income >= 41775
        withheld = income * 0.22
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    elsif income >= 10275
        withheld = income * 0.12
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    else
        withheld = income * 0.10
        post_tax = income - withheld
        p "Filing individually with an income of #{income}, you pay #{withheld} in taxes. This leaves you with #{post_tax} after tax"
    end
end

taxes(salary_37)
taxes(salary_35)
taxes(salary_32)
taxes(salary_24)
taxes(salary_22)
taxes(salary_12)
taxes(salary_10)

taxes(220000)

# This one is 'fun'. For this challenge I just did some basic math for finding how much they owe
# in taxes and created variable that store said information. The argument can take either a 
# variable or a direct input of an integer (flexible). I wanted to see all the tax brackets printed out
# and the relevent information so I interpolated it into an informative string. 