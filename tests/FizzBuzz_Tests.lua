local fizzBuzz = require("FizzBuzz")

describe("FizzBuzz: Test FizzBuzz Returns", function()
    it("if at 0, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex(0))
    end)
    
    it("if at -1, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex(-1))
    end)
    
    it("if at -132, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex(-132))
    end)
    
    it("if at 1, return 1", function()
        assert.are.equal(1, fizzBuzz:GetFizzBuzzFromIndex(1))
    end)
    
    it("if at 2, return 2", function()
        assert.are.equal(2, fizzBuzz:GetFizzBuzzFromIndex(2))
    end)
    
    it("if at 3, return 'Fizz'", function()
        assert.are.equal("Fizz", fizzBuzz:GetFizzBuzzFromIndex(3))
    end)
    
    it("if at 4, return 4", function()
        assert.are.equal(4, fizzBuzz:GetFizzBuzzFromIndex(4))
    end)
    
    it("if at 5, return 'Buzz'", function()
        assert.are.equal("Buzz", fizzBuzz:GetFizzBuzzFromIndex(5))
    end)
    
    it("if at 6, return 'Fizz'", function()
        assert.are.equal("Fizz", fizzBuzz:GetFizzBuzzFromIndex(6))
    end)
    
    it("if at 7, return 7", function()
        assert.are.equal(7, fizzBuzz:GetFizzBuzzFromIndex(7))
    end)
    
    it("if at 8, return 8", function()
        assert.are.equal(8, fizzBuzz:GetFizzBuzzFromIndex(8))
    end)
    
    it("if at 9, return 9", function()
        assert.are.equal("Fizz", fizzBuzz:GetFizzBuzzFromIndex(9))
    end)
    
    it("if at 15, return 'FizzBuzz'", function()
        assert.are.equal("FizzBuzz", fizzBuzz:GetFizzBuzzFromIndex(15))
    end)
    
    it("if at 20, return 'Buzz'", function()
        assert.are.equal("Buzz", fizzBuzz:GetFizzBuzzFromIndex(20))
    end)
    
    it("if at 21, return 'Fizz'", function()
        assert.are.equal("Fizz", fizzBuzz:GetFizzBuzzFromIndex(21))
    end)
    
    it("if at 30, return 'FizzBuzz'", function()
        assert.are.equal("FizzBuzz", fizzBuzz:GetFizzBuzzFromIndex(30))
    end)
end)

describe("FizzBuzz: Different Types", function()
    it("If type int, return correctly 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex(0))
    end)
    
    it("If type string 0, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex("0"))
    end)

    it("If type string 17, return 0", function()
        assert.are.equal(17, fizzBuzz:GetFizzBuzzFromIndex("17"))
    end)

    it("If type string test, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex("test"))
    end)
    
    it("If type table, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex({}))
    end)
    
    it("If type nil, return 0", function()
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex(nil))
    end)
end)

describe("FizzBuzz: Check if Is valid Input", function()
    it("Check if 0 is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput(0))
    end)
    
    it("Check if '0' is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput("0"))
    end)
    
    it("Check if '1' is a valid value", function()
        assert.are.equal(true, fizzBuzz:IsValidInput("1"))
    end)
    
    it("Check if '9' is a valid value", function()
        assert.are.equal(true, fizzBuzz:IsValidInput("9"))
    end)
    
    it("Check if 'test' is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput('test'))
    end)
    
    it("Check if table is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput({}))
    end)
    
    it("Check if 123 is a valid value", function()
        assert.are.equal(true, fizzBuzz:IsValidInput(123))
    end)
    
    it("Check if -1 is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput(-1))
    end)
    
    it("Check if -21 is a valid value", function()
        assert.are.equal(false, fizzBuzz:IsValidInput(-21))
    end)
end)

describe("FizzBuzz: Check if Main is Calling correctly", function()
    it("Check if Main is calling Main", function()
        local localFizzBuzz = require("FizzBuzz")
        spy.on(localFizzBuzz, "Main")
        
        localFizzBuzz:Main(1)
  
        assert.spy(localFizzBuzz.Main).was.called()
    end)
    
    it("Check if Main is calling GetFizzBuzz", function()
        local localFizzBuzz = require("FizzBuzz")
        spy.on(localFizzBuzz, "GetFizzBuzzFromIndex")
        
        localFizzBuzz:Main(3)
  
        assert.spy(localFizzBuzz.GetFizzBuzzFromIndex).was.called(3)
    end)
    
    it("Check if Main is calling GetFizzBuzz 30 times", function()
        local localFizzBuzz = require("FizzBuzz")
        spy.on(localFizzBuzz, "GetFizzBuzzFromIndex")
        
        localFizzBuzz:Main(30)
  
        assert.spy(localFizzBuzz.GetFizzBuzzFromIndex).was.called(30)
    end)
    
    it("Check if Main('30') is calling GetFizzBuzz 30 times", function()
        local localFizzBuzz = require("FizzBuzz")
        spy.on(localFizzBuzz, "GetFizzBuzzFromIndex")
        
        localFizzBuzz:Main("30")
  
        assert.spy(localFizzBuzz.GetFizzBuzzFromIndex).was.called(30)
    end)
    
    it("Check if Main is calling IsValidInput 30 times", function()
        local localFizzBuzz = require("FizzBuzz")
        spy.on(localFizzBuzz, "IsValidInput")
        
        localFizzBuzz:Main(30)
  
        assert.spy(localFizzBuzz.IsValidInput).was.called(30)
    end)
end)