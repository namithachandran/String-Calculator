class StringCalculator
  def add(str_numbers)
    return 0 if str_numbers.empty?
    return str_numbers.to_i if str_numbers.length == 1

    delimiter = ',|\n'
    if str_numbers.start_with?('//')
      delimiter = str_numbers[2]
      str_numbers = str_numbers[4..]
    end

    numbers = str_numbers.split(Regexp.new(delimiter)).map(&:to_i)

    negative_nmubers = numbers.select { |num| num < 0 }
    raise "negative numbers not allowed: #{negative_nmubers.join(', ')}" unless negative_nmubers.empty?

    numbers.sum
  end
end
