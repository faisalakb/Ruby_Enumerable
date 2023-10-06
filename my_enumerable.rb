module MyEnumerable
  def all?()
    each { |item| return false unless yield(item) }
    true
  end

  def any?()
    each { |item| return true if yield(item) }
    false
  end

  def filter()
    res_array = []
    each { |item| res_array.push(item) if yield(item) }
    res_array
  end
end
