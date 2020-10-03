local sti = require "src/libraries/Simple-Tiled-Implementation/sti"
local anim8 = require "src/libraries/anim8/anim8"

function love.load()
	-- Grab window size
	local windowWidth  = love.graphics.getWidth()
	local windowHeight = love.graphics.getHeight()
	-- For resizing the window
	love.window.setMode(800, 600, {resizable=true, vsync=false, minwidth=400, minheight=300})
	
	-- Set world meter size (in pixels)
	love.physics.setMeter(32)
	-- Load a map exported to Lua from Tiled
	map = sti("src/DKMap.lua", { "box2d" })
	-- Prepare physics world with horizontal and vertical gravity
	world = love.physics.newWorld(0, 0)
	-- Prepare collision objects
	map:box2d_init(world)

	-- Sprite Stuff

	-- Create a Custom Layer, 2 is the second layer on map
	map:addCustomLayer("Sprite Layer", 2)

	-- Add data to Custom Layer
	local spriteLayer = map.layers["Sprite Layer"]
	spriteLayer.sprites = {
		player = {
			-- image = love.graphics.newImage("src/sprites/ship1.png"),
			x = 64,
			y = 64,
			r = 0
		}
	}

	-- Animation Stuff

	local image, animation

	image = love.graphics.newImage("src/sprites/ship1.png")
	local g = anim8.newGrid(32, 32, image:getWidth(), image:getHeight())
 	animation = anim8.newAnimation(g('1-4', 1), 0.2)

	-- Update callback for Custom Layer
	function spriteLayer:update(dt)
		for _, sprite in pairs(self.sprites) do
			-- sprite.r = sprite.r + math.rad(dt)
			sprite.r = sprite.r
		end

		animation:update(dt)
	end

	-- Draw callback for Custom Layer
	function spriteLayer:draw()
		for _, sprite in pairs(self.sprites) do
			local x = math.floor(sprite.x)
			local y = math.floor(sprite.y)
			local r = sprite.r
			-- love.graphics.draw(sprite.image, x, y, r)

			animation:draw(image, 32, 32)

		end
	end
end

function love.update(dt)

	map:update(dt)
end

function love.draw()
	
	-- Draw the map and all objects within
	love.graphics.setColor(1, 1, 1)
	map:draw()

	-- Draw Collision Map (useful for debugging)
	love.graphics.setColor(1, 0, 0)
	map:box2d_draw()

	-- Please note that map:draw, map:box2d_draw, and map:bump_draw take
	-- translate and scale arguments (tx, ty, sx, sy) for when you want to
	-- grow, shrink, or reposition your map on screen.
end