
##########################################################################
# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

# Given A = [1, 2, 3], the function should return 4.

# Given A = [−1, −3], the function should return 1.

# Write an efficient algorithm for the following assumptions:

# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].
#-------------------------------------------------------------------------
# SOLUTIONS 
#-------------------------------------------------------------------------
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

# https://app.codility.com/demo/results/demo2JPDCY-6SY/
def solution(a)
  # write your code in Ruby 2.2
  a.sort!.uniq!
  maxi = a.last
  
  return 1 if maxi <= 0
  
  a.each_with_index do |num, i|
    # return num < 0 ? a[i+1] > 0 && a[i+1] != 1 ? 1 : next : a[i+1] != num+1 ? num+1 : next
    # [0,2,66] [2,4,5,6,7]
    if num < 0
      if a[1+i] > 0 && a[i+1] != 1 
        return 1
      else 
        next
      end
    end
    return num+1 if a[i+1] != num+1
  end
end
# https://app.codility.com/demo/results/demoD9QAPS-YS5/
def solution2(a)
    # write your code in Ruby 2.2
    maxi = a.max
    # puts "arr - #{a.inspect}  -- "
    return 1 if maxi <= 0
    mini = a.min 
    mini = mini <= 0 ? 1 : mini
    # puts "min - #{mini} - maxi - #{maxi} "
    (mini..maxi).each do |num|
      return num if !a.include?(num)
    end
    return maxi+1
  end

# https://app.codility.com/demo/results/demoXVQWFR-B85/
def solution1(a)
  # write your code in Ruby 2.2
  maxi = a.max
  return 1 if maxi <= 0
  (1..maxi).each do |num|
    return num if !a.include?(num)
  end
  return maxi+1
end

  a = [2,3,4,5,7]
  b = [0]
  c = [-4,54]
  d = [54,-34]
  e = [-34,0]
  f = [0,2,4,5,6]
  g = [23,34]
  h = [0,2,4,6]
  i = [1]
  j = [34]
  k = [1,43]
  l = [0,54]
  m = [100,0,2,260,3,4]
  n = Array(1..149)
  n.delete(3)
  n.delete(1)

 puts "a -->  #{solution(a) == 6}"
 puts "b -->  #{solution(b) == 3}"
 puts "c -->  #{solution(c) == 1}"
 puts "d -->  #{solution(d) == 1}"
 puts "e -->  #{solution(e) == 1}"
 puts "f -->  #{solution(f) == 1}"
 puts "g -->  #{solution(g) == 24}"
 puts "h -->  #{solution(h) == 1}"
 puts "i -->  #{solution(i) == 2}"
 puts "j -->  #{solution(j) == 35}"
 puts "k -->  #{solution(k) == 2}"
 puts "l -->  #{solution(l) == 1}"
 puts "m -->  #{solution(m) == 1}"
 puts "n -->  #{solution(n) == 3}"
####################################################################
# A non-empty array A consisting of N integers is given. The first covering prefix of array A is the smallest integer P 
# such that 0≤P<N and such that every value that occurs in array A also occurs in sequence A[0], A[1], ..., A[P].

# For example, the first covering prefix of the following 5−element array A:

#   A[0] = 2
#   A[1] = 2
#   A[2] = 1
#   A[3] = 0
#   A[4] = 1
# is 3, because sequence [ A[0], A[1], A[2], A[3] ] equal to [2, 2, 1, 0], contains all values that occur in array A.


####################################################################
# A binary gap within a positive integer N is any maximal sequence of consecutive zeros
# that is surrounded by ones at both ends in the binary representation of N.

# For example, number 9 has binary representation 1001 and contains a binary gap of length 2.
# The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3.
# The number 20 has binary representation 10100 and contains one binary gap of length 1. 
# The number 15 has binary representation 1111 and has no binary gaps. 
# The number 32 has binary representation 100000 and has no binary gaps.

# 9.to_s(2) #=> "1001"
# 4165.to_s(2) => "1000001000101"
# 1313 => 10100100001
# 1289 => 10100001001
n = 1289.to_s(2)

#or i could take the index of 1 and find difference between them
# { b: 1, a: 2 }.sort # will sort by key
# { c: 3, b: 1, a: 2 }.sort_by(&:last) # will sort by values
# defaults.merge!(preferences) { |key, old, new| [old, new].max }
# (\w)\1{2,} matching repeating characters more than 2 abcccdfhhhhhhvcckhh
max = n.scan(/1(0+)(?=1)/).flatten.max&.length 
puts max.nil? ? 0 : max

occur = 1289.to_s(2).chars.map.with_index { |c,i| i if c == "1" }.compact
occur.length > 1 ? occur.each_cons(2).map { |a,b| b-a }.max - 1 : 0
####################################################################
# s and t contains string and '#' character in a string means backspace
# INPUT 
# s = "ab#c" -> "ac"
# t = "ad#c" -> "ac"
# OUTPUT: true
# note if input is s = "abc###" -> will become "" empty string

def backspace_compare(s, t)
    while s.include?("#") do s.gsub!(/(^#+)|\w#/, '') end
    while t.include?("#") do t.gsub!(/(^#+)|\w#/, '') end
    s == t
end
####################################################################

# this is how ROT13 algorithm works,

# Original text:

# Why did the chicken cross the road? => # Jul qvq gur puvpxra pebff gur ebnq?
# Gb trg gb gur bgure fvqr! => To get to the other side!

def rot13(secret_messages)
  # your code here
    secret_messages.map do |c|
        c.tr("A-Za-z", "N-ZA-Mn-za-m")
    end
end
####################################################################

# that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

# For example, given

#     A = [3, 8, 9, 7, 6]
#     K = 3
# the function should return [9, 7, 6, 3, 8]. Three rotations were made:

#     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
#     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
#     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
# For another example, given

#     A = [0, 0, 0]
#     K = 1
# the function should return [0, 0, 0]

# Given

#     A = [1, 2, 3, 4]
#     K = 4
# the function should return [1, 2, 3, 4]

# Assume that:

# N and K are integers within the range [0..100];
# each element of array A is an integer within the range [−1,000..1,000].
def pla(a,k)
  return a if a.length == k
  for i in 0...k
    last = a.pop
    a.unshift(last)
  end
  a
end
####################################################################
# A non-empty array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired 
#with another element that has the same value, except for one element that is left unpaired.

# For example, in array A such that:

#   A[0] = 9  A[1] = 3  A[2] = 9
#   A[3] = 3  A[4] = 9  A[5] = 7
#   A[6] = 9
# the elements at indexes 0 and 2 have value 9,
# the elements at indexes 1 and 3 have value 3,
# the elements at indexes 4 and 6 have value 9,
# the element at index 5 has value 7 and is unpaired.
# Write a function:

# def solution(a)

# that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.

# For example, given array A such that:

#   A[0] = 9  A[1] = 3  A[2] = 9
#   A[3] = 3  A[4] = 9  A[5] = 7
#   A[6] = 9
# the function should return 7, as explained in the example above.

# Write an efficient algorithm for the following assumptions:

# N is an odd integer within the range [1..1,000,000];
# each element of array A is an integer within the range [1..1,000,000,000];
# all but one of the values in A occur an even number of times.
# fifa = Hash.new([])
# fifa[k].push(val)
a = [9,3,9,3,9,7,9]
occur = Hash.new(0)
# occur.default(0)
a.each { |n| occur[n] = occur[n] + 1  }
# a.each { |n| occur[n] = (occur[n] || 0) + 1  }
occur.select{|k,v| v.odd?}.keys.first

####################################################################
def balance_brackets(exp)
  stack = []
  pair = { "}": "{", "]": "[", ")": "(" }
  exp.each_char do |c|
    stack.push(c) if '{[('.include?(c)
    if '}])'.include?(c)
      return  0 if pair[c.to_sym] != stack.pop
    end
  end
  return 1
end
def balance_brackets(exp)
  stack = []
  pair = { "}": "{", "]": "[", ")": "(" }
  exp.each_char do |c|
    stack.push(c) if c == "{" || c == "[" || c == "("
    if c == "}" || c == "]" || c == ")"
      return  0 if pair[c.to_sym] != stack.pop
    end
  end
  return 1
end
# set benchmark here 
####################################################################
# that, given an array A consisting of N integers, returns index of any element of array A in 
# which the dominator of A occurs. The function should return −1 if array A does not have a dominator.

# For example, given array A such that

#  A[0] = 3    A[1] = 4    A[2] =  3
#  A[3] = 2    A[4] = 3    A[5] = -1
#  A[6] = 3    A[7] = 3
# the function may return 0, 2, 4, 6 or 7, as explained above.

a = [3, 4, 3, 2, 3, -1, 3, 3]
d = {}
a.each_with_index { |n,i|  d.has_key?(n) ? d[n].push(i) : d[n] = [i] }
d.values.max {|a, b| a.size <=> b.size }
d.max_by { |x| x.length } # wrong
####################################################################
####################################################################
# def my_method
#   puts "reached the top"
#   yield
#   puts "reached the bottom"
# end

# my_method do
#   puts "reached yield"
# end
# reached the top
# reached yield
# reached the bottom
# # -====================
# def my_method
#   yield("John", 2)
#   puts "Hi #{name}"
# end

# my_method { |name, age| puts "#{name} is #{age} years old" }

# # output
# John is 2 years old
# NameError: undefined local variable or method `name' for #<IRB::...> but you can store last evaluated expression from block
#===========================
# What does &block (ampersand parameter) mean?
# Here’s what &object does:

# if the object is a block, it converts it to a Proc.
# if the object is a Proc, it converts it to a block.
# if the object is something else, it calls to_proc on it, and then converts it to a block.
#####https://mixandgo.com/l earn/ruby-blocks
[2,3,4,5,6].select(&:even?)
#.select { |e| e.even? }
####################################################################
# if the string is odd length then return the mid character 
# if string is even length then return the mid two charaters
def get_middle(str)
  no = str.length/2
 if str.length.odd?
   "#{str[no.floor]}"
 else
   "#{str[no-1]}#{str[no]}"
 end
end
####################################################################
# Test.assert_equals(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")
# must return "11 11 2000 10003 22 123 1234000 44444444 9999")
# sort by weight and if the multilple values have the same weight then sort by string

def order_weight(strng)
  # your code
 h = []
 s_arr = strng.split(" ")
 s_arr.each {|n| h.push([n, n.split("").sum(&:to_i)])}
 h = h.sort_by &:to_s
 result = h.sort_by(&:last)
 result.collect(&:first).join(" ")
end
####################################################################


a = [1, [1,2,3] ,4]
a1 = [1,[1,[1,2],3],4]

def recursive_flatten(array, results = [])
  array.each do |element|
    if element.class == Array
      recursive_flatten(element, results)
    else
      results << element
    end
  end
  results
end

def multiple_flatten(array, n)
  count = 0
  arr = array
  while count < n do
    arr = single_flatten(arr)
    puts arr.inspect
    count += 1
  end
  arr
end

def single_flatten(array)
  results = []
  array.each do |element|
    if element.class == Array
      element.each {|value| results << value}
    else
      results << element
    end
  end
  results
end

def single_flatten(arr, arrf = [])
  arr.each do |ele|
    if ele.instance_of?(Array)
      ele.each { |val| arrf << val }
    else
      arrf << ele
    end
  end
  arrf
end

def my_flatten(array, n = nil)
  flag = false
  count = 0
  while flag == false || (!n.nil? && count < n)
    count += 1
    arr = []
    flag = true
    array.each do |ele|
      if ele.kind_of?(Array)
        ele.each {|val| arr << val}
        flag = false
      else
        arr << ele
      end
    end
    array = arr
  end
  array
end

# p multiple_flatten(a1,2)
p recursive_flatten(a1)
p my_flatten(a1)
# same iteration cycle 

######################################
# Assessment InvoZone ahsan saeed

Letter Count
# Have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters.
# For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's.
# If there are no words with repeating letters return -1. Words will be separated by spaces.

Examples:
Input: "Hello apple pie"
Output: Hello

Input: "No words"
Output: -1

####################################

Problem: Can you return an array of elements occurring only once in the input array?
Beware, I am not asking unique elements, I am asking for the elements appearing only one time in the input array.

Examples:
1) input [6, 5, 3, 6, 8, 5, 5, 2, 3] should output [8, 2]
2) input [2, 4, 6, 2, 4, 6] should output []
3) input [3, 4, 5] should output [3, 4, 5]

#####################################

# Background We are given directions to go from one point to another. The directions are "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite,
# "WEST" and "EAST" too. Going one direction and coming back the opposite direction is a wasted effort, so let's concise these directions to go the shortest route.
# For example, given the following directions: plan = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]. You can immediately see that going "NORTH" and
# then "SOUTH" is not reasonable, better stay to the same place! So the task is to reduce a simplified version of the plan. A better plan in this case is simply:
# plan = ["WEST"] Other examples: In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away. 
# What a waste of time! Better to do nothing. The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] 
# (nil in Clojure). In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but 
# they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"]. 
# Task You have to write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed
# (W<->E or S<->N side by side). The Haskell version takes a list of directions with data Direction = North | East | West | South. The Clojure version returns nil 
# when the path is reduced to nothing. Specification dir_reduc(arr) Parameters arr: Array (of Strings) - An array with each index containing 1 of the 4 cardinal directions,
# all in uppercase Return Value Array (of Strings) - The optimized set of instructions Examples arr Return Value ["NORTH","SOUTH","SOUTH","EAST","WEST","NORTH","WEST"] 
# ["WEST"] ["NORTH","SOUTH","SOUTH","EAST","WEST","NORTH"] [] ["NORTH","WEST","SOUTH","EAST"] ["NORTH","WEST","SOUTH","EAST"] Note Not all paths can be made simpler.
# The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other and 
# can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].

def dirReduc(arr)
   plan = []
   arr.each do |dir|
     if dir == "NORTH" && plan.last == "SOUTH"
       res = plan.pop
     elsif dir == "SOUTH" && plan.last == "NORTH"
       res = plan.pop
     elsif dir == "EAST" && plan.last == "WEST"
       res = plan.pop
     elsif dir == "WEST" && plan.last == "EAST"
       res = plan.pop
     end
     plan.push(dir) if res.nil?
   end

   plan
end

##########################################


Code to scrap data

##########################################

require 'open-uri'
require 'nokogiri'
require 'json'

url = 'https://bridgereports.com/city/wichita-kansas/'
html = open(url)

doc = Nokogiri::HTML(html)
bridges = []
table = doc.at('table')


table.search('tr').each do |tr|
  cells = tr.search('th, td')
  links = {}
  cells[0].css('a').each do |a|
    links[a.text] = a['href']
    puts "ahsan"
  end

  got_coords = false

  if links['NBI report']
    nbi = links['NBI report']
    report = "https://bridgereports.com" + nbi
    report_html = open(report)
    sleep 1 until report_html
    r = Nokogiri::HTML(report_html)

    lat = r.css('span.latitude').text.strip.to_f
    long = r.css('span.longitude').text.strip.to_f
    puts lat, long
    got_coords = true
  else
    got_coords = true
  end

  sleep 1 until got_coords == true

  bridges.push(
    links: links,
    latitude: lat,
    longitude: long,
    carries: cells[1].text,
    crosses: cells[2].text,
    location: cells[3].text,
    design: cells[4].text,
    status: cells[5].text,
    year_build: cells[6].text.to_i,
    year_recon: cells[7].text,
    span_length: cells[8].text.to_f,
    total_length: cells[9].text.to_f,
    condition: cells[10].text,
    suff_rating: cells[11].text.to_f,
    id: cells[12].text.to_i
  )
  puts bridges
end

json = JSON.pretty_generate(bridges)
File.open("wichita_bridge_data.json", 'w') { |file| file.write(json) }

###############################################

Adding an Item to an Amazon DynamoDB Table

###############################################

require 'aws-sdk-dynamodb'

def add_item_to_table(dynamodb_client, table_item)
  dynamodb_client.put_item(table_item)
  puts "Added book '#{table_item[:item][:name]} " \
    "(#{table_item[:item][:authorName]})'."
rescue StandardError => e
  puts "Error adding book '#{table_item[:item][:name]} " \
    "(#{table_item[:item][:authorName]})': #{e.message}"
end

def lambda_handler(event:, context:)

  region = 'us-west-2'
  table_name = 'Books'
  id = '12'
  name = 'ahsan'
  authorName = 'Saeed'
  rating = 5.5

  dynamodb_client = Aws::DynamoDB::Client.new(region: region)

  table_item = {
    table_name: table_name,
    item: {
      id: id,
      name: name,
      authorName: authorName
    }
  }

  puts "Adding movie '#{table_item[:item][:title]} " \
    " (#{table_item[:item][:year]})' " \
    "to table '#{table_name}'..."
  add_item_to_table(dynamodb_client, table_item)
end
  
###############################################
require 'json'
require 'net/http'

# Define the URL from which to fetch JSON data
json_url = 'https://dummyjson.com/products'

# Function to fetch JSON data from a URL
def fetch_json_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

# Function to sort and group JSON data by a specific key
  def sort_and_group(json_data, key)
  json_data.sort_by { |item| item[key] }
           .group_by { |item| item[key] }
end

# Fetch JSON data from the URL
begin
  json_data = fetch_json_data(json_url)["products"]
  # puts json_data
  # Define the key by which to group and sort the JSON data
  group_by_key = 'category'

  # Sort and group the JSON data
  grouped_data = sort_and_group(json_data, group_by_key)

  # Print the sorted and grouped data
  grouped_data.each do |key, items|
    puts "Category: #{key}"
    # items.each { |item| puts "  #{item}" }
    puts items.map {|h| h['price']}.reduce(:+)
  end
rescue StandardError => e
  puts "Error fetching or processing JSON data: #{e.message}"
end
###############################################
    
