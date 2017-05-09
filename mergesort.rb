def mergesort(m)
  if m.length <= 1
    return m
  end
  else
    midpoint = m.length/2
    mergesort(m[0 ... midpont])
    mergesort(m[midpoint+1 ... m.length])
  end
end
