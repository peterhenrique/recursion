def merge_sort(arr, retorno= [], left= [], right= [])
   
    if arr.length == 1
       retorno = arr
       return retorno
    elsif arr.length == 2
       
        if arr[0].kind_of?(Array) == true
            
            p arr[0].kind_of?(Array)
            p arr[0].length
            if arr[0].length == 2
                if arr[0][0] > arr[1][0]
                    if arr[0][1] > arr [1][0]                
                        left = [arr[0][1], arr[1][0]]                    
                        right = [arr[0][0], arr[1][1]]
                        retorno = left + right
                        p retorno
                        #merge_sort(retorno)
                    else 
                        left = [arr[0][1], arr[0][1]]                    
                        right = [arr[1][0], arr[1][1]]
                        retorno = left + right
                        p retorno
                        #merge_sort(retorno)
                    end
                else
                    if arr[0][1] > arr [1][0]                
                        left = [arr[0][0], arr[1][0]]                    
                        right = [arr[0][1], arr[1][1]]
                        retorno = left + right
                        p retorno
                        #merge_sort(retorno)
                    else 
                        left = [arr[0][0], arr[0][1]]                    
                        right = [arr[1][0], arr[1][1]]
                        retorno = left + right
                        p retorno
                        #merge_sort(retorno)
                    end              
                end
                merge_sort(retorno)
                 
            end
        else
            if arr[0] > arr[1]
                retorno = [[arr[1]], [arr[0]]]
                p retorno
                retorno.flatten!
                p retorno
            else
                retorno = [[arr[0]], [arr[1]]]
                retorno.flatten!
            end
        end

    else
        if arr.length % 2 == 0
            i = arr.length / 2
            left = merge_sort(arr[0..i-1])
            right = merge_sort(arr[i..])
            retorno = [left, right]
            merge_sort(retorno)
        end

    end   
    #p merge_sort(left)
    retorno

end
p merge_sort([1])
p merge_sort([2, 1])

p merge_sort([5,1,7,4])


#p merge_sort([1,2,7,4,23,7,9,10])