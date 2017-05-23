# Block and Yield examples:

class Array
  def my_each
    i = 0
    while i < self.size
        yield(self[i])
        i+=1
    end
    self
  end
end

puts
puts "block and yeild"
[1,2,3].my_each { |num| print "#{num}!" }
puts puts

# Block Examples

puts"block without yeild"
[1,2,3].each { |num| print num*2 }   # block is in between the curly braces
puts puts

puts "block using do"
[1,2,3].each do |x|
 puts x*2                    # block is everything between the do and end
end
puts

# Proc Examples
puts "Proc using &"
p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)              # The '&' tells ruby to turn the proc into a block
puts

puts "Proc using .call"
proc = Proc.new { puts "Hello World" }
proc.call                     # The body of the Proc object gets executed when called
puts

# Lambda Examples
puts "Lambda using &"
lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam)
puts

puts "Lambda using .call"
lam = lambda { puts "Hello World" }
lam.call
puts
