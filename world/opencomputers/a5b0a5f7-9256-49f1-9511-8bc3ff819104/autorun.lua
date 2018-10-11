local fs = require("filesystem")
local term = require("term")
local component = require("component")

component.gpu.setResolution(40,20)

os.sleep(1)
term.clear()

local function i(s) io.write(s); return io.read(); end

local function c(ldt)
  term.setCursor(10,9)
  local iid = i("ID : ")
  term.setCursor(10,10)
  local ipw = i("PW : ")
  if ldt[iid] ~= nil then
    if ldt[iid] == ipw then return iid; end
  end
end

local ldt = {["zlflrznfn3623"]="1234",["admin"]="admin"}
local k = 2
while true do 
  id = c(ldt)
  if id ~= nil then break; end
  term.clear()
  term.setCursor(8,9)
  io.write("ID or Password is wrong!")
  os.sleep(k)
  k = k*2
  term.clear()
end
term.clear()
term.setCursor(10,10)
io.write("Welcom "..id.."!")
os.sleep(1)
term.clear()