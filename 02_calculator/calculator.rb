def add first, second
  first + second
end

def subtract first, second
  first - second
end

def sum array
  if array.length == 0 then
    0
  else
    total = 0
    array.each do |x|
      total += x
    end
  total
  end
end

def multiply array
  total = 1
  array.each do |x|
    total *= x
  end
  total
end
