start_array = [[0,1,0,1,1],
               [1,0,1,1,0],
               [0,1,1,1,0],
               [0,0,0,1,0]]

##### Erases the columns with zeros
def erase_column(start_array, done=false)
  start_array.each do |row|
    row.each_with_index do |m_el, i|
      if m_el == 0
        start_array.each_with_index do |x,j|
          start_array[j].delete_at(i)
          done=true
        end
      end
    end
    break if done
  end
end

#### Erases the rows with zero

def erase_row(start_array,done=false)
  start_array.each_with_index do |row,i|
    row.each do |m_el|
      if m_el == 0
        start_array.delete_at(i)
        done=true
      end
    end
    break if done
  end
end

puts "M0=#{start_array}"
start_array.each_with_index do |x, i|
  puts "X=#{x}"
  puts "I=#{i}"
  puts "Msize=#{start_array.size} <=> M[I]size=#{start_array[i].size}"
  if start_array.size > start_array[i].size
    erase_row(start_array)
  elsif start_array.size < start_array[i].size
    erase_column(start_array)
  else 
    erase_row(start_array)
  end
  puts "M=#{start_array}"
end
#start_array.each {|x| puts "#{x}"}
m=start_array.size
n=start_array[0].size
puts "Max size is a #{m}x#{n} matrix"
