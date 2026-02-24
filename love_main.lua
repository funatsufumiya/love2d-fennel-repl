UI2D = require "ui2d..ui2d"
ui_main = require("ui_main")

function love.load()
	-- Initialize the library. You can optionally pass a font size. Default is 14.
	UI2D.Init( "love" )
end

function love.keypressed( key, scancode, isrepeat )
	UI2D.KeyPressed( key, isrepeat )
end

function love.textinput( text )
	UI2D.TextInput( text )
end

function love.keyreleased( key, scancode )
	UI2D.KeyReleased()
end

function love.wheelmoved( x, y )
	UI2D.WheelMoved( x, y )
end

function love.update( dt )
	-- This gets input information for the library.
	UI2D.InputInfo()
end

function love.draw()
	love.graphics.clear( 0.2, 0.2, 0.7 )

	ui_main.draw()

	-- This marks the end of the GUI.
	UI2D.RenderFrame()
end
