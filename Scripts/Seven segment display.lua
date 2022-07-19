This script shows numbers (integers or floating point) by sending a signal as descibed below.
-- by Nenad Staji? 2017.
    
    -- Use this from your script to send numbers to this display:
    -- sim.setFloatSignal("SevSegFloatingPoint", number) - automatically set decimal places
    -- sim.setFloatSignal("SevSegPrecision1", number) - display number to 1 decimal place
    -- sim.setFloatSignal("SevSegPrecision2", number) - display number to 2 decimal places
    -- sim.setFloatSignal("SevSegPrecision3", number) - display number to 3 decimal places
    -- If you send a number that is higher then it is possible to show, the display will show an error (four dashes)
    
    -- ID tekstura
    txID_Num = {
        sim.getTextureId("Digit_Num1"),
        sim.getTextureId("Digit_Num2"),
        sim.getTextureId("Digit_Num3"),
        sim.getTextureId("Digit_Num4")
        }
    
    txID_Dot = {
        sim.getTextureId("Dot_1"),
        sim.getTextureId("Dot_2"),
        sim.getTextureId("Dot_3"),
        sim.getTextureId("Dot_4")
        }
    
    -- Sa?uvaj vrijednosti originalnih tekstura
    txDataNum = {
        sim.readTexture(txID_Num[1],0,0,0,256,379),
        sim.readTexture(txID_Num[2],0,0,0,256,379),
        sim.readTexture(txID_Num[3],0,0,0,256,379),
        sim.readTexture(txID_Num[4],0,0,0,256,379)
        }
    
    txDataDot = {
        sim.readTexture(txID_Dot[1],0,0,0,64,64),
        sim.readTexture(txID_Dot[2],0,0,0,64,64),
        sim.readTexture(txID_Dot[3],0,0,0,64,64),
        sim.readTexture(txID_Dot[4],0,0,0,64,64)
        }
    
    -- Definicije brojeva
    txDataDigits = {}    -- Index po?inje od 0
        txDataDigits[0] = sim.readTexture(sim.getTextureId("Digit_0"),0,0,0,256,379)
        txDataDigits[1] = sim.readTexture(sim.getTextureId("Digit_1"),0,0,0,256,379)
        txDataDigits[2] = sim.readTexture(sim.getTextureId("Digit_2"),0,0,0,256,379)
        txDataDigits[3] = sim.readTexture(sim.getTextureId("Digit_3"),0,0,0,256,379)
        txDataDigits[4] = sim.readTexture(sim.getTextureId("Digit_4"),0,0,0,256,379)
        txDataDigits[5] = sim.readTexture(sim.getTextureId("Digit_5"),0,0,0,256,379)
        txDataDigits[6] = sim.readTexture(sim.getTextureId("Digit_6"),0,0,0,256,379)
        txDataDigits[7] = sim.readTexture(sim.getTextureId("Digit_7"),0,0,0,256,379)
        txDataDigits[8] = sim.readTexture(sim.getTextureId("Digit_8"),0,0,0,256,379)
        txDataDigits[9] = sim.readTexture(sim.getTextureId("Digit_9"),0,0,0,256,379)
        txDataDigits[10] = sim.readTexture(sim.getTextureId("Digit_Blank"),0,0,0,256,379)
        txDataDigits[11] = sim.readTexture(sim.getTextureId("Digit_Minus"),0,0,0,256,379)
        
    txDataDots = {}        -- Index po?inje od 0
        txDataDots[0] = sim.readTexture(sim.getTextureId("Dot_Off"),0,0,0,64,64)
        txDataDots[1] = sim.readTexture(sim.getTextureId("Dot_On"),0,0,0,64,64)
    
    uvScaleNum = {0.07,0.07}
    uvScaleDot = {0.005, 0.005}
    
    function DisplayClear()
        for n=1,4 do
            DisplaySetDigit(n, 10)
        end
        for n=1,4 do
            DisplaySetDot(n, 0)
        end
    end
    
    function DisplayReset()
        for n=1,4 do
            sim.writeTexture(txID_Num[n],0,txDataNum[n],0,0,0,0)
            sim.writeTexture(txID_Dot[n],0,txDataDot[n],0,0,0,0)
        end
    end
    
    function DisplayError()
        for n=1,4 do
            DisplaySetDigit(n, 11)
        end
        for n=1,4 do
            DisplaySetDot(n, 0)
        end
    end
    
    function DisplaySetDigit(digit, number)
        sim.writeTexture(txID_Num[digit],0,txDataDigits[number],0,0,0,0) -- Kopiraj cijelu teksturu
    end
    
    function DisplaySetDot(dot, state)
        sim.writeTexture(txID_Dot[dot],0,txDataDots[state],0,0,0,0)
    end
    
    function DisplaySetNumber(digits, dotPos, neg)
        -- digits -> string containing all digits (without dot)
        -- dotPos -> position of the dot in the number (not on the display)
        local cnt = 1
        local dotShift = 0
        DisplayClear()
        for n=1,4 do
            if 5 - n > #digits then
                if 5 - n == #digits + 1 and neg then
                    DisplaySetDigit(n, 11)
                else 
                    DisplaySetDigit(n, 10)
                end
                dotShift = dotShift + 1
            else
                DisplaySetDigit(n, tonumber(string.sub(digits,cnt,cnt)))
                cnt = cnt + 1
            end
        end
        if dotPos > 0 then DisplaySetDot(dotPos + dotShift, 1) end
    end
    
    function extractNum(number)
        local digits = string.sub(string.format("%i", number*1000), 1, 4)
        local dotPos = string.find(string.format("%f", number), "%.") - 1
        local whole = string.sub(digits, 1, dotPos)
        local isFloat = string.find(digits, '[1-9]', dotPos + 1) ~= nil
        if isFloat then
            return string.gsub(digits, "%.?0+$", ""), dotPos
        else
            return whole, 0
        end
    end
    
    function DisplayNumber(number)
        if number > 9999 or number < -999 then
            DisplayError()
            return
        end
        local neg = false
        if number < 0 then
            neg = true
            number = -number
        end
        DisplaySetNumber(extractNum(number), neg)
    end
    
    function DisplayNumberPrecision(number, decPlaces)
        local maxNum = 10 ^ (4 - decPlaces)
        local dShift = 10 ^ decPlaces
        local neg = false
        if number < 0 then
            neg = true
            number = -number
            maxNum = 10 ^ (3 - decPlaces)
        end
        number = math.floor(number * dShift + 0.5) / dShift
        if number > (maxNum - (1/dShift)) then
            DisplayError()
            return
        end
        local digits, dotPos = extractNum(number)
        --if dotPos == 0 then 
            -- Display whole number as decimal
        --    if decPlaces == 1 then digits = digits.."0" end
        --    if decPlaces == 2 then digits = digits.."00" end
        --    if decPlaces == 3 then digits = digits.."000" end
        --    dotPos = #digits - 1
        --end
        if dotPos == 0 then dotPos = #digits end
        local zrs = decPlaces - (#digits - dotPos)
        for n=1,zrs do
            digits = digits.."0"
        end
        dotPos = #digits - decPlaces
        DisplaySetNumber(digits, dotPos, neg)
    end
    
    function DisplayInteger(number)
        
    end
    
    -- console = sim.auxiliaryConsoleOpen("Aux Console", 500, 0x10)
DisplayClear()
while sim.getSimulationState()~=sim.simulation_advancing_abouttostop do
    local number = nil
    number = sim.getFloatSignal("SevSegFloatingPoint")
    if number ~= nil then 
        DisplayNumber(number)
        sim.clearFloatSignal("SevSegFloatingPoint")
        number = nil
    end
    number = sim.getFloatSignal("SevSegInteger")
    if number ~= nil then 
        DisplayInteger(number)
        sim.clearFloatSignal("SevSegInteger")
        number = nil
    end
    number = sim.getFloatSignal("SevSegPrecision1")
    if number ~= nil then 
        DisplayNumberPrecision(number, 1)
        sim.clearFloatSignal("SevSegPrecision1")
        number = nil
    end
    number = sim.getFloatSignal("SevSegPrecision2")
    if number ~= nil then 
        DisplayNumberPrecision(number, 2)
        sim.clearFloatSignal("SevSegPrecision2")
        number = nil
    end
    number = sim.getFloatSignal("SevSegPrecision3")
    if number ~= nil then 
        DisplayNumberPrecision(number, 3)
        sim.clearFloatSignal("SevSegPrecision3")
        number = nil
    end
    sim.switchThread()
end

DisplayReset()
