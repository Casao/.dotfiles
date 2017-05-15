hs.window.animationDuration = 0

-- Reload Config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

-- Arrow keys
local function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() 
        k.triggered = true
        hs.eventtap.keyStroke(mods, key, 1000) 
    end
end

k = hs.hotkey.modal.new('{}', 'F17')

k:bind({}, 'i', pressFn('up'))
k:bind({}, 'j', pressFn('left'))
k:bind({}, 'k', pressFn('down'))
k:bind({}, 'l', pressFn('right'))

k:bind({'shift'}, 'j', pressFn({'shift'}, 'left'))
k:bind({'shift'}, 'k', pressFn({'shift'}, 'down'))
k:bind({'shift'}, 'i', pressFn({'shift'}, 'up'))
k:bind({'shift'}, 'l', pressFn({'shift'}, 'right'))

k:bind({'cmd'}, 'j', pressFn({'cmd'}, 'left'))
k:bind({'cmd'}, 'k', pressFn({'cmd'}, 'down'))
k:bind({'cmd'}, 'i', pressFn({'cmd'}, 'up'))
k:bind({'cmd'}, 'l', pressFn({'cmd'}, 'right'))

k:bind({'alt'}, 'j', pressFn({'alt'}, 'left'))
k:bind({'alt'}, 'k', pressFn({'alt'}, 'down'))
k:bind({'alt'}, 'i', pressFn({'alt'}, 'up'))
k:bind({'alt'}, 'l', pressFn({'alt'}, 'right'))

k:bind({'shift', 'cmd'}, 'j', pressFn({'shift', 'cmd'}, 'left'))
k:bind({'shift', 'cmd'}, 'k', pressFn({'shift', 'cmd'}, 'down'))
k:bind({'shift', 'cmd'}, 'i', pressFn({'shift', 'cmd'}, 'up'))
k:bind({'shift', 'cmd'}, 'l', pressFn({'shift', 'cmd'}, 'right'))

k:bind({'shift', 'alt'}, 'j', pressFn({'shift', 'alt'}, 'left'))
k:bind({'shift', 'alt'}, 'k', pressFn({'shift', 'alt'}, 'down'))
k:bind({'shift', 'alt'}, 'i', pressFn({'shift', 'alt'}, 'up'))
k:bind({'shift', 'alt'}, 'l', pressFn({'shift', 'alt'}, 'right'))

k:bind({'cmd', 'alt'}, 'j', pressFn({'cmd', 'alt'}, 'left'))
k:bind({'cmd', 'alt'}, 'k', pressFn({'cmd', 'alt'}, 'down'))
k:bind({'cmd', 'alt'}, 'i', pressFn({'cmd', 'alt'}, 'up'))
k:bind({'cmd', 'alt'}, 'l', pressFn({'cmd', 'alt'}, 'right'))

k:bind({'cmd', 'alt', 'shift'}, 'j', pressFn({'cmd', 'alt', 'shift'}, 'left'))
k:bind({'cmd', 'alt', 'shift'}, 'k', pressFn({'cmd', 'alt', 'shift'}, 'down'))
k:bind({'cmd', 'alt', 'shift'}, 'i', pressFn({'cmd', 'alt', 'shift'}, 'up'))
k:bind({'cmd', 'alt', 'shift'}, 'l', pressFn({'cmd', 'alt', 'shift'}, 'right'))

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

w = hs.hotkey.modal.new({}, 'F19')

pressedF19 = function()
  w:enter()
end

releasedF19 = function()
  w:exit()
end

w:bind({}, 'i', function() hs.window.focusedWindow():maximize() end)
w:bind({}, 'j', function() hs.window.focusedWindow():moveToUnit'[0,0,50,100]' end)
w:bind({}, 'l', function() hs.window.focusedWindow():moveToUnit'[50,0,100,100]' end)

k:bind({}, 'w', pressedF19, releasedF19)