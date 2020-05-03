local FizzBuzz = {
    DEFAULT_RETURN = 0
}
FizzBuzz.__index = FizzBuzz

function FizzBuzz:GetFizzBuzzFromIndex(index)
     
    if not FizzBuzz:IsValidInput(index) then
        return self.DEFAULT_RETURN 
    end

    if type(index) == "string" then
        index=tonumber(index)
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


function FizzBuzz:IsValidInput(inputToCheck)
    if type(inputToCheck) ~= "number" then
        if type(inputToCheck) ~= "string" then
            return false
        else
            local result = tonumber(inputToCheck)
            if result == nil or result <= 0  then return false end
            return true
        end
        return false
    end
    return inputToCheck > 0
end

function FizzBuzz:Main(times)
    if type(times) == "string" then
        times = tonumber(times)
    end

    if type(times) == "number" then
        for i=1,times,1 do
            print(FizzBuzz:GetFizzBuzzFromIndex(i))
        end
    end
end

FizzBuzz:Main(arg[1])

return FizzBuzz