# initialise test spec file

require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
    
  it 'returns 0 for an empty string' do
    calculator = StringCalculator.new
    expect(calculator.add('')).to eq(0)
  end


  it 'returns the single number' do
    calculator = StringCalculator.new
    expect(calculator.add('1')).to eq(1)
  end
end