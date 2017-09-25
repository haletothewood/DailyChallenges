#Ex1
arr = [1, 2, 3, 4, 5]
p arr.map{|x| x + 1}
# => [2, 3, 4, 5, 6]

#Ex2
arr = [1, 3, 5, 4, 2]
p arr.sort
# => [1, 2, 3, 4, 5]

#Ex3
arr = [1, 3, 5, 4, 2]
p arr.sort.map{|x| x + 1}
# => [2, 3, 4, 5, 6]

#Ex4
arr = [1, 2, 3, 4, 5]
p arr.inject(:+)
# => 15 (the sum)

#Ex5
arr = [1, 2, 3, 4, 5]
p arr.inject(:+)*2
# => 30 (twice the sum)
