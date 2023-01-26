module MyEnumerable

  def defaultCondition(element)
    element
  end

  def all?(&condition)
    each do |element|
      if !condition.call(element)
        return false
      end
    end

    true
  end

  def any?(&condition)
    each do |element|
      if condition.call(element)
        return true
      end
    end

    false
  end

  def filter(&condition)
    result = []
    each do |element|
      if condition.call(element)
        result.push(element)
      end
    end

    result
  end
end