# This function was written to implement mergesort
# for ruby, and to give a base jumping off point in
# any implementations that may require the use of This
# algorithm.


# Function to recursively break down and sort the array
def mergesort(m)
  if m.length == 1
    return m
  end

  midpoint = m.length/2
  a1=mergesort(m[0, midpoint])
  a2=mergesort(m[midpoint, m.length])

  return merge(a1,a2)
end

# Function to take the diveded array an merge it together
def merge(a1, a2)
  final=[]
  until a1==[] || a2==[]
    if ( a1.first <= a2.first)
      final << a1.shift
    else
      final << a2.shift
    end
  end

  until a1==[]
    final.push(a1[0])
    a1.shift
  end
  until a2==[]
    final.push(a2[0])
    a2.shift
  end
  return final
end

# Array used to test mergesort
m = [14, 7, 3, 12, 5, 8, 28, 9, 11, 6, 2];
print m
print "\n"
print mergesort(m)
