class ArrayChop

  def self.chop(int, array)
    index_hash = Hash.new { |hash, key| hash[key] = [] }

    array.each_index { |i| index_hash[array[int]] << i }

    puts index_hash
  end

end

array = [1,2,3,4,5,6,6,6,6,6,6,6]

puts ArrayChop.chop(6, array)