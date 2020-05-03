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
        assert.are.equal(0, fizzBuzz:GetFizzBuzzFromIndex("17"))
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