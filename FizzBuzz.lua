local FizzBuzz = {
    DEFAULT_RETURN = 0
}

function FizzBuzz:GetFizzBuzzFromIndex(index)
    if type(index) ~= "number" or 
        index <= 0 then 
            return self.DEFAULT_RETURN 
        end

    local stringResult = ""

    if index % 3 == 0 then 
        stringResult=stringResult.."Fizz" 
    end

    if index % 5 == 0 then 
        stringResult=stringResult.."Buzz" 
    end

    if #stringResult > 0 then return stringResult end

    return index
end

function FizzBuzz:Main()
    
    for i=0,30,2 do
        print(FizzBuzz:GetFizzBuzzFromIndex(i))
    end

end

FizzBuzz:Main()

return FizzBuzz