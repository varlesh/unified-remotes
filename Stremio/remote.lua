local kb = libs.keyboard;
local tmr = require("timer");
local server = require("server");
local script = libs.script;
local device = libs.device;

actions.board = function ()
	kb.stroke("f1");
end


actions.discover = function ()
	kb.stroke("f2");
end


actions.library = function ()
	kb.stroke("f3");
end


actions.back = function ()
	kb.stroke("esc");
end


actions.left = function ()
	kb.stroke("left");
end


actions.right = function ()
	kb.stroke("right");
end


actions.up = function ()
	kb.stroke("up");
end


actions.down = function ()
	kb.stroke("down");
end


actions.ok = function ()
	kb.stroke("enter");
end

actions.playpause = function ()
		kb.stroke("space");
end

actions.stremio = function ()
	os.start("/opt/stremio/stremio");
end


actions.close = function()
  script.default("killall -9 stremio");
end

actions.focus = function()
  kb.stroke("alt", "tab");
end

actions.searching = function ()
		kb.stroke("s");
        device.keyboard();
end

actions.clearsearch = function()
	kb.stroke("s"); 
	kb.stroke("ctrl", "a");
	kb.stroke("delete");
	kb.stroke("esc");
end
