class ArrayChop

  def self.chop(int, array)
    array.index(int) ? array.index(int) : -1
  end

end

array = [1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20, 1, 1]
puts ArrayChop.chop(1, array)
