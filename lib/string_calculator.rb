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

    numbers.sum
  end
end
