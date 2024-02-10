local M = {}

M.sound=false
M.scanlines=true

M.load=function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	print(filename)
	print(sys.exists(filename))
	local data = sys.load(filename) 
	print("loading settings")
	print(data.sound)
	print(data.scanlines)
	M.sound=data.sound or false
	M.scanlines=data.scanlines or false
	return data
end

M.save = function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	sys.save(filename, { sound = M.sound, scanlines = M.scanlines })  
end

return M