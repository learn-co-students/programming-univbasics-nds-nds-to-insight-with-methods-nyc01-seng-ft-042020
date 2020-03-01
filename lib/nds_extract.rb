$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

row_index = 0
sub_total = 0
while row_index < director_data[:movies].length do

sub_total += director_data[:movies][row_index][:worldwide_gross]

row_index += 1
end
#pp director_data
pp sub_total
end   ### GOOD !!! ###


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
total1 = 0
row_index = 0 

while row_index < nds.length do
result = {}

if nds[row_index][:name] == 'Stephen Spielberg'
dir_name1 = nds[row_index][:name] 
total1 = gross_for_director(nds[row_index])
result.store(dir_name1, total1)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  
total2 = gross_for_director(nds[row_index]) 
result.store(dir_name2, total2)
end

if nds[row_index][:name] == 'James Cameron'
dir_name3 = nds[row_index][:name]  
total3 = gross_for_director(nds[row_index])
result.store(dir_name3, total3)
end

if nds[row_index][:name] == 'Spike Lee'
dir_name4 = nds[row_index][:name]  
total4 = gross_for_director(nds[row_index])

result.store(dir_name4, total4)
end

if nds[row_index][:name] == 'Wachowski Siblings'
dir_name5 = nds[row_index][:name] 
total5 = gross_for_director(nds[row_index]) 
result.store(dir_name5, total5)
end

if nds[row_index][:name] == 'Robert Zemeckis'
dir_name6 = nds[row_index][:name]
total6 = gross_for_director(nds[row_index])
result.store(dir_name6, total6)
end

if nds[row_index][:name] == 'Quentin Tarantino'
dir_name7 = nds[row_index][:name]
total7 = gross_for_director(nds[row_index])
result.store(dir_name7, total7)
end

if nds[row_index][:name] == 'Martin Scorsese'
dir_name8 = nds[row_index][:name]
total8 = gross_for_director(nds[row_index])
result.store(dir_name8, total8)
end

if nds[row_index][:name] == 'Francis Ford Coppola'
dir_name9 = nds[row_index][:name]
total9 = gross_for_director(nds[row_index])
result.store(dir_name9, total9)
end
row_index += 1
end
result = {
  dir_name1 => total1,
  dir_name2 => total2,
  dir_name3 => total3,
  dir_name4 => total4,
  dir_name5 => total5,
  dir_name6 => total6,
  dir_name7 => total7,
  dir_name8 => total8,
  dir_name9 => total9
}
pp result
end
