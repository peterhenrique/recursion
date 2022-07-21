# frozen_string_literal: true

def fibs(n)
  arr = []
  i = 0
  until i == n
    case i
    when 0
      arr << 0
    when 1
      arr << 1
    else
      numero = arr[-1] + arr[-2]
      arr << numero
    end
    i += 1
  end
  print arr
end

def fibs_rec(num)
  arr = []
  case num
  when 1
    arr << 0
  when 2
    arr << 0 && arr << 1
  else
    arr = fibs_rec(num - 1)
    soma = arr[-1] + arr[-2]
    arr << soma

  end
  arr
end

puts fibs(2)

puts fibs(3)

puts fibs(8)

puts fibs_rec(2)
p fibs_rec(3)

p fibs_rec(8)
