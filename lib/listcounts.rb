def sum(numbers:)
  sum = 0
  if numbers.empty?
    return nil
  end
  numbers.each do |term|
    sum = term.to_i + sum
  end
  return sum
end

def min(numbers:)
  numbers.sort!
  return numbers.fetch(0)
end

def max(numbers:)
  if numbers.empty?
    return nil
  end
  numbers.sort! { |x,y| y<=>x }
  return numbers.fetch(0)
end

def average(numbers:)
  if numbers.empty?
    return nil
  end
  average = 0
  swag = numbers.length
  numbers.each do |term|
    average = term.to_i + average
  end
  return average.to_f / swag.to_f
end

def median(numbers:)
  if numbers.empty?
    return nil
  end
  numbers.sort!
  if numbers.length.even?
    return (numbers[(numbers.length / 2.0)] + numbers[(numbers.length / 2.0)-1]) / 2.0
  else
    return numbers[(numbers.length / 2.0).floor]
  end

end
