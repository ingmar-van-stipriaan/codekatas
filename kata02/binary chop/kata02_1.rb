class ArrayChop

  def chop(int, array)
    puts "INT: #{int} - ARR: #{array}"

    array_max = array.length-1
    array_min = 0
    # get the mid of the array
    array_mid = (array.length / 2)

    if array.empty?
      -1
    else
      if array[array_mid] > int
        #int is in lower set
        index = chop(int, array[array_min..array_mid-1])
        if int != array[0]
          -1
        else
          index
        end
      elsif array[array_mid] < int
        #int is in upperset
        index = chop(int, array[array_mid+1..array_max])
        return index + array_mid
      else
        array_mid
      end
    end
  end
end

array = [1,3,5]
puts ArrayChop.new.chop(5, array)