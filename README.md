# StringCalculator.rb
# StringCalculator Assesment

# Tech stack used Ruby, Rspec

# Assignment link : [here](https://blog.incubyte.co/blog/tdd-assessment/)

# Youtube reference : [watch](https://www.youtube.com/watch?v=qkblc5WRn-U)


# List of Test Cases Covered in String Calculator:

Basic Functionality:

    Empty string: "" (returns 0)
    Single number: "1" (returns 1)
    Multiple numbers separated by comma: "1,2" (returns 3)
    Multiple numbers separated by newlines: "1\n2" (returns 3)

Delimiters:

    Custom delimiters: "//;\n1;2" (returns 3, using ';' as delimiter)
    Ignoring empty delimiters: "1,,2" (returns 3, ignores extra commas)
    Multiple delimiters: "//;,\n1;2,3" (returns 6, supports ',' and ';' as delimiters)

Error Handling:

    Negative numbers: "-1" (throws exception: "Negative numbers not allowed: -1")
    All negative numbers: "-1,-2,-3" (throws exception listing all negatives)

Advanced:

    Numbers larger than max safe integer: "9007199254740991" (returns the max safe integer value, implementation dependent)
    Ignoring numbers exceeding max safe integer: "1,9007199254740991,2" (returns the sum of 1 and max safe integer, ignores the last number)




# Explore my GitHub, LinkedIn and Website here
<br />
My LinkedIn Profile : [Profile](https://www.linkedin.com/in/tufail-shah619/)  <br />
Explore my GitHub here : [GitHub](https://github.com/ShahTufail) <br />
Dev profile: [Dev](https://dev.to/tufail) <br />
Portfolio: [Here](https://tufail.tech/) <br />
