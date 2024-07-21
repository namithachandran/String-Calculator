require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  it 'returns 0 for the empty string' do
    expect(string_calculator.add("")).to eq(0)
  end

  it 'returns the number when the input is a single number string.' do
    expect(string_calculator.add("1")).to eq(1)
  end
  
  it 'returns the sum of two numbers' do
    expect(string_calculator.add("2,2")).to eq(4)
  end

  it 'returns the sum of multiple numbers' do
    expect(string_calculator.add("5,5,5,5")).to eq(20)
  end
end
