$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

  # Find a way to accumulate the :worldwide_gross and return that Integer
  # using director_data as input

def gross_for_director(director_data)
 gross = 0
  row_index = 0
  while row_index < director_data[:movies].length do gross += director_data[:movies][row_index][:worldwide_gross]
  row_index +=1
end
gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
   counter = 0
  result = {}
 while  counter <nds.length do
    gross=0
    index=0 
  while index < nds[counter][:movies].size do
  gross += nds[counter][:movies][index][:worldwide_gross]
    index +=1
  end
  director=nds[counter][:name]
 result[director]=gross
counter +=1
end
 return result
end

