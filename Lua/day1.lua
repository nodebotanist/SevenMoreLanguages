function ends_in_3(num)
  return num % 10 == 3
end

function is_prime(num)
  for divisor = 2, num - 1 do
    if num % divisor == 0 then
      return false
    end
  end
  return true
end

count = 0
i = 0

while count < 3 do
  if is_prime(i) and ends_in_3(i) then
    print(i)
    count = count + 1
  end

  i = i + 1
end
