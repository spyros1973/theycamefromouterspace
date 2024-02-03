local M = {}

M.load=function()
	local filename = sys.get_save_file("sys_save_load", "highscore")
	local data = sys.load(filename) 
	return data.highscore or 0
end

M.save = function(high_score)
	local filename = sys.get_save_file("sys_save_load", "highscore")
	sys.save(filename, { highscore = high_score })  
end
	
return M