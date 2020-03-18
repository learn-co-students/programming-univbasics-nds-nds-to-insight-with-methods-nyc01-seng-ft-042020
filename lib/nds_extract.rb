$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  index = 0
  worldwide_gross_total = 0
    while index < director_data[:movies].length do
      worldwide_gross_total += director_data[:movies][index][:worldwide_gross]
      index += 1
    end
  worldwide_gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  index = 0
  result = {}
  while index < nds.length do
    result[nds[index][:name]] = gross_for_director(nds[index])
    index += 1
  end
  result
end

