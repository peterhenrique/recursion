def fibs(n)
    arr = []
    i = 0
    until i == n do
        if i == 0
            arr << 0
        elsif i == 1
            arr << 1
        else
            numero = arr[-1] + arr[-2]
            arr << numero
        end
        i +=1
    end
    print arr
end

def fibs_rec(num)
    arr = []
    if num == 1
       arr << 0
    elsif num == 2
        arr << 0 && arr << 1
    else 
       arr = fibs_rec(num-1)
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



