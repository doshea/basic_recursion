require 'ruby-prof'
# Profile the code
RubyProf.start

# def factorial(n)
#   if n > 1
#     return n*factorial(n-1) #recursive case
#   else
#     return 1 #base case
#   end
# end

def factorial(n)
  product = 1
  for i in (1..n)
    product *= i
  end
  product
end

puts factorial(140)
puts factorial(141)
puts factorial(142)

result = RubyProf.stop
# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)