local M = {}

M.play_sound=false
M.scanlines=false

M.load=function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	local data = sys.load(filename) 
	M.play_sound=data.play_sound or false
	M.scanlines=data.scanlines or false
	return data
end

M.save = function()
	local filename = sys.get_save_file("sys_save_load", "settings")
	sys.save(filename, { play_sound = M.play_sound, scanlines = M.scanlines })  
end

return M