M={}
M.lives=3
M.score=0
M.shots_fired=0
M.shots_hit=0
M.mode="pregame"
M.level=1
M.player_max_bullets=1

M.reset = function()
	M.lives=3
	M.score=0
	M.shots_fired=0
	M.shots_hit=0
	M.level=1
	M.player_max_bullets=1
	M.mode="pregame"
end

return M