class ArrayChop

  def self.chop(int, array)
    string_array = array.collect{|i| i.to_s}
    string_int = int.to_s
    get_index = string_array.find_index{ |e| e.match( /#{Regexp.escape(string_int)}/ ) }
    get_index ? get_index : -1
  end

end