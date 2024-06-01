class StringCalculator
    MAX_SAFE_INTEGER = 9007199254740991
  
    def add(numbers)
      return 0 if numbers.empty?
  
      delimiters, numbers_part = extract_delimiters(numbers)
      numbers_array = numbers_part.split(Regexp.union(delimiters))
  
      check_for_negatives(numbers_array)
  
      numbers_array.reduce(0) do |sum, current|
        num = current.to_i
        next sum if num > MAX_SAFE_INTEGER
        sum + num
      end
    end
  
    private
  
    def extract_delimiters(numbers)
      if numbers.start_with?('//')
        delimiter_part, numbers_part = numbers.split("\n", 2)
        custom_delimiters = delimiter_part[2..].split('')
        return custom_delimiters, numbers_part
      else
        return [',', '\n'], numbers
      end
    end
  
    def check_for_negatives(numbers)
      negative_numbers = numbers.select { |num| num.to_i < 0 }
      raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
    end
  end
  