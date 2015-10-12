# Enter your procedural solution here!
# def sum_multiples_of_three_and_five(num)
#   i = sum = 0
#   while i < num
#     sum += i if i%15 == 0 || i%5 == 0 || i%3 == 0
#     i += 1
#   end
#   sum
# end
#
# alternatively,
# def sum_multiples_of_three_and_five(num)
#   [*1...num].inject(0){ |sum, i| (i%15 == 0 || i%5 == 0 || i%3 == 0) ? sum + i : sum}
# end
#
# sum_multiples_of_three_and_five(1000)

def collect_multiples(limit)
  [*1...limit].select{|i| i%15 == 0 || i%5 == 0 || i%3 == 0 }
end

def sum_multiples(limit)
  collect_multiples(limit).inject(:+)
end
