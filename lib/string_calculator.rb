class StringCalculator
  def add(str_numbers)
    return 0 if str_numbers.empty?
    return str_numbers.to_i if str_numbers.length == 1
  end
end