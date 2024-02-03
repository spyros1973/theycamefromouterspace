local device = require("device")

local M = {}

M.screen_width, M.screen_height=270,640 --window.get_size()
M.info = sys.get_sys_info()
M.is_mobile = device.mobile() or device.tablet()
--M.is_mobile = true
M.device_type = device.type
return M