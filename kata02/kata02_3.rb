class ArrayChop

  def self.chop(int, array)
    hash = Hash[array.map.with_index.to_a]
    hash[int] ? hash[int] : -1
  end

end

array = [1,2,3,4,5,6,7,8,45,6,7]
puts ArrayChop.chop(1, [1])