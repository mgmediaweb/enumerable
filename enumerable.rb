module MyEnumerable
  def all_method
    list.each do |num|
      return false unless yield num
    end
    true
  end

  def any_method
    list.each do |num|
      return true if yield num
    end
    false
  end

  def filter_method
    result = []
    list.each do |num|
      result << num if yield num
    end
    result
  end
end

# WE NEED TESTING THIS
