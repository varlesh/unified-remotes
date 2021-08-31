local kb = libs.keyboard;
local server = libs.server;
local script = libs.script;
local device = libs.device;

actions.switchvideosource = function(src)
	if( src == "movies" ) then kb.stroke("ctrl", "1") end
	if( src == "tv") then kb.stroke("ctrl", "2") end
	if( src == "favorite" ) then kb.stroke("ctrl", "4") end
end

actions.searching = function()
	kb.stroke("ctrl", "f");
    device.keyboard();
end

actions.clearsearch = function()
	kb.stroke("ctrl", "f"); 
	kb.stroke("ctrl", "a");
	kb.stroke("delete");
	kb.stroke("enter");
end

actions.back = function()
	kb.stroke("esc");
end

actions.changequality = function()
	kb.press("q");
end

actions.playpause = function()
    kb.stroke("space");
end

actions.close = function()
  script.default("killall -9 popcorntime && killall -9 mpv");
end

actions.left = function()
	kb.stroke("left");
end

actions.right = function()
	kb.stroke("right");
end

actions.up = function()
	kb.stroke("up");
end

actions.down = function()
	kb.stroke("down");
end

actions.bookmarks = function()
	kb.stroke("f");
end

actions.watched = function()
	kb.stroke("w");
end

actions.nextseason = function()
	kb.stroke("ctrl", "down");
end

actions.previousseason = function()
	kb.stroke("ctrl", "up");
end

actions.launch = function()
	os.start("/usr/bin/popcorntime");
end

actions.focus = function()
	kb.stroke("alt", "tab");
end
