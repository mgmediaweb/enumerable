require_relative 'enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*vars)
    @list = []
    vars.each { |num| @list << num }
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
p(list.all_method { |e| e < 5 })
p(list.all_method { |e| e > 5 })

# Test #any?
p(list.any_method { |e| e == 2 })
p(list.any_method { |e| e == 5 })

# Test #filter
p(list.filter_method(&:even?))
