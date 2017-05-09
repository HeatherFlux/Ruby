# Bubble Sort Algorithm for Ruby

x = 10000.times.map{rand(20000)}
y=x.dup
for i in 0 ... 9999 do
  for i in 0 ... 9999 do
    if x[i] > x[i+1]
      x[i], x[i+1] = x[i+1], x[i]
    end
  end
end
print("Done\n-----\n")
print(x,"\n")
print(y,"\n")
print(y.sort,"\n")
print(x-y | y-x)
