class StringCalculator
    MAX_SAFE_INTEGER = 9007199254740991
  
    def add(numbers)
      return 0 if numbers.empty?
  
      delimiters = get_delimiters(numbers)
      numbers_array = numbers.split(Regexp.union(delimiters))
  
      check_for_negatives(numbers_array)
  
      numbers_array.reduce(0) do |sum, current|
        num = current.to_i
        next sum if num > MAX_SAFE_INTEGER
        sum + num
      end
    end
  
    private
  
    def get_delimiters(numbers)
      custom_delimiter_match = numbers.match(/\/\/(.*)\n/)
      custom_delimiter_match ? custom_delimiter_match[1].split('') : [',', '\n']
    end
  
    
  end
  