class ArrayChop

  def self.chop(int, array)

    for i in 0..array.length
      if array.empty?
        return -1
      end
      if i == int
        pos = array.index(i)
        return pos
      end
      if !array.index(int)
        return -1
      end

    end
  end

end

array = [1,2,3,4,5,6,7,8,9,10]
puts ArrayChop.chop(5, [1, 3, 5])