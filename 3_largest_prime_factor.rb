# Link to the problem: https://projecteuler.net/problem=3
# Description:
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143

def factor(num)
  # next line and line 13 for checking time spent on calculations 
  time = Time.now
  (2...num).each do |i|
    next unless (num % i).zero?
    next unless prime?(num / i)

    puts "the largest prime factor of #{num} is #{num / i}"
    break
  end
  puts Time.now - time
end

def prime?(num)
  is_prime = true
  (2...num).each do |i|
    next unless (num % i).zero?

    is_prime = false
    break
  end
  is_prime
end

factor(600851475143)
