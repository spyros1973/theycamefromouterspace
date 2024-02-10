local M = {}

M.sound=true
M.scanlines=false

M.load=function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	print("settings: "..filename)
	if not sys.exists(filename) then return	end
	local data = sys.load(filename) 
	M.sound=data.sound or false
	M.scanlines=data.scanlines or false
	return data
end

M.save = function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	sys.save(filename, { sound = M.sound, scanlines = M.scanlines })  
end

return M