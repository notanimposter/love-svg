local SVG = require 'svg'
local testSVG = SVG("guard.svg")
local frameRate = 0

function love.load()
	love.window.setMode( 1280, 720, {fsaa=0,vsync=false} )
end

function love.update(dt)
	frameRate = 1/dt
end
function love.keypressed(k)
	if k == 'escape' then love.event.quit() end
end
function love.draw()

	love.graphics.setBackgroundColor(255,255,255)
	testSVG:draw(20, 100, 1)

	love.graphics.setColor(0,0,0)
	love.graphics.print(string.format("%i", frameRate), 10,10)
	love.graphics.print(string.format("%i", love.timer.getFPS( )), 10,30)
end
