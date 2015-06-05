do
 
function run(msg, matches)
local file = assert(io.popen("/bin/" .. matches[1], 'r'))
local output = file:read('*all')
file:close()
print(output)
        return output
end
 
return {
        description = "Run",
        usage = {"!bin n shit"},
        patterns = {
                "^!bin (.*)$"
        },
        run = run
}
 
end
