class ArrayChop

  def chop(int, array)

    imin = 0
    imax = array.length-1                   # -1 because arrays are zero based

    while imax >= imin                      # make sure imin is less than or equal to imax : 1, [1] = equal
      imid = imin + ((imax - imin) / 2)     # 0(min) +( 3(max) - 0(min) / 2) = 1

      if array[imid] == int                 # if array[1] => 3 == 1
        return imid                         # 3 is not 1

      elsif array[imid] > int               # if array[1] => 3 > 7
        imax = imid - 1                     # 3 is not greater than 7

      else
        imin = imid + 1                     # 3(mid) + 1 = 4(min) :: imin is now 4

      end

    end

    return -1

  end

end

puts ArrayChop.new.chop(7, [1, 3, 5, 7])
