require "Ball"

local ball = nil
local area = { width = 200; height = 100 }

function love.conf(t)
  t.window.width = area.width
  t.window.height = area.height
end

function love.load()
  ball = Ball(10, 10)
end

function love.update(dt)
  ball:checkBounds(area)
  ball:update(dt)
end

function love.draw()
  love.graphics.rectangle("line", 0, 0, area.width, area.height, 0, 0, 120)

  ball:draw()
end
