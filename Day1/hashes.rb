#Ex6
hash = {a: 1, b: 2}
p hash.each {|k,v| hash[k] = v + 1}
# => {a: 2, b: 3}

#Ex7
hash = {a: 2, b: 5, c:1}
# values = hash.map {|k,v| v}.sort
# hash.values returns an array of values
p Hash[hash.values.sort.each_with_index.map {|v, i| [hash.keys[i], v]}]
# => {:a=>1, :b=>2, :c=>5}

#Ex8
hash = {a: 2, b: 5, c:1}
p hash.map {|k,v| v}.sort
# => [1, 2, 5]

#Ex9
hash = {a: 1, b: 2, c: 3}
p Hash[hash.map{ |k, v| [v.to_s, k.to_s] }]
# => {"1"=>"a", "2"=>"b", "3"=>"c"}
