module MyEnumerable
  def all?(&condition)
    each do |element|
      return false unless condition.call(element)
    end

    true
  end

  def any?(&condition)
    each do |element|
      return true if condition.call(element)
    end

    false
  end

  def filter(&condition)
    result = []
    each do |element|
      result.push(element) if condition.call(element)
    end

    result
  end
end
