local sti = require "src/libraries/Simple-Tiled-Implementation/sti"
local anim8 = require "src/libraries/anim8/anim8"
local camera = require "src/libraries/hump/camera"

function love.load()

	-- Window Stuff
	-- Grab window size
	local windowWidth  = love.graphics.getWidth()
	local windowHeight = love.graphics.getHeight()
	-- For resizing the window
	love.window.setMode(windowWidth, windowHeight, {resizable=false, vsync=false, minwidth=500, minheight=300})
	
	-- Map stuff
	-- Set world meter size (in pixels)
	love.physics.setMeter(32)
	-- Load a map exported to Lua from Tiled
	map = sti("src/DKMap.lua", { "box2d" })
	-- Prepare physics world with horizontal and vertical gravity
	world = love.physics.newWorld(0, 0)
	-- Prepare collision objects
	map:box2d_init(world)

	-- Animation Stuff
	local image, animation
	image = love.graphics.newImage("src/sprites/ship1.png")
	local g = anim8.newGrid(32, 32, image:getWidth(), image:getHeight())
	animation = anim8.newAnimation(g('1-4', 1), 0.2)
	
	-- Map Layer and Player stuff
	-- Create a Custom Layer, 2 is the second layer on map
	map:addCustomLayer("Sprite Layer", 3)
	-- Add data to Custom Layer
	local spriteLayer = map.layers["Sprite Layer"]

	spriteLayer.sprites = {
		player = {
			x = 64,
			y = 64,
			r = 0
		}
	}

	-- Camera Stuff
	-- cam = camera.new(spriteLayer.sprites.player.x, spriteLayer.sprites.player.y)
	
	-- Update callback for Custom Layer
	function spriteLayer:update(dt)
		for _, sprite in pairs(self.sprites) do

			local blockwidth = 32

			animation:update(dt)

			-- Mouse movement
			function love.mousepressed(x, y, MouseButton)

				if MouseButton == 1 then

					-- Right
					if spriteLayer.sprites.player.x < x then 

						spriteLayer.sprites.player.x = spriteLayer.sprites.player.x + blockwidth
						-- sprite.r = 0
					end

					-- Down
					if spriteLayer.sprites.player.y < y then 

						spriteLayer.sprites.player.y = spriteLayer.sprites.player.y + blockwidth
                        -- sprite.r = 33
					end

					-- Left
					if spriteLayer.sprites.player.x > x then 

						spriteLayer.sprites.player.x = spriteLayer.sprites.player.x - blockwidth
                        -- sprite.r = -66
					end

					-- Up
					if spriteLayer.sprites.player.y > y then 

						spriteLayer.sprites.player.y = spriteLayer.sprites.player.y - blockwidth
						-- sprite.r = -33
					end

					-- Add Random Event!!!

				end
			end
		end
	end

	-- Draw callback for Custom Layer
	function spriteLayer:draw()
		for _, sprite in pairs(self.sprites) do
						
			-- cam:attach()

			local x = math.floor(spriteLayer.sprites.player.x)
			local y = math.floor(spriteLayer.sprites.player.y)
			local r = sprite.r
			-- local camx = x - cam.x
			-- local camy = y - cam.y

			-- cam:move(camx/2, camy/2)
			
			-- -- Must draw here
			animation:draw(image, x, y, r)
			-- cam:detach()
		end
	end
end

function love.update(dt)

	map:update(dt)

end

function love.draw()

	-- cam:attach()

	-- -- Scale world
	-- local screen_width  = love.graphics.getWidth()  / 2
	-- local screen_height = love.graphics.getHeight() / 2

	-- -- Translate world so that player is always centred
	-- local player = map.layers["Sprite Layer"].sprites.player
	-- local tx = math.floor(player.x - screen_width  / 2)
	-- local ty = math.floor(player.y - screen_height / 2)

	-- -- Transform world
	-- love.graphics.scale(2)
	-- love.graphics.translate(-tx, -ty)

	-- Draw the map and all objects within
	-- If comment out, turns everything red
	love.graphics.setColor(1, 1, 1)
	map:draw()

	-- Draw Collision Map (useful for debugging)
	love.graphics.setColor(1, 0, 0)
	map:box2d_draw()

	-- cam:detach()
end