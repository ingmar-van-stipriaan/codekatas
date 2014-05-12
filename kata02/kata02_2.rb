class ArrayChop

  def self.chop(int, array)

    if array.index(int)
      array.index(int)
    else
      -1
    end
  end

end

array = [1,2,3,4,5,6,7,8,9]
puts ArrayChop.chop(3, array)