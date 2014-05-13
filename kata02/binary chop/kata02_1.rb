class ArrayChop

  def chop(int, array)
    puts "INT: #{int} - ARR: #{array}"

    array_max = array.length
    array_min = 0

    if int == array[0]
      return 0
    end

    if array.empty? || array.length == 1
      -1
    else
      # get the mid of the array
      array_mid = (array.length / 2)

      if array[array_mid] > int
        #int is in lower set
        index = chop(int, array[array_min..array_mid])
        return index
      elsif array[array_mid] < int
        #int is in upperset
        index = chop(int, array[array_mid..array_max])
        return index + array_mid
      else
        array_mid
      end
    end
  end


end

array = [1,2,3,4,5,6,7,8,9,10]

puts ArrayChop.new.chop(9, array)