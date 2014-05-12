class ArrayChop

  def chop(int, array)

  end

end

array = [1,2,3,4,5,6,6,6,6,6,6,6]

index_hash = Hash.new { |hash, key| hash[key] = [] }

array.each_index { |i| index_hash[array[i]] << i }

puts index_hash