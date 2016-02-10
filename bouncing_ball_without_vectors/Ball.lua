function Ball(x, y)
  local ball = {
    x = x;
    y = y;
    xVelocity = 100;
    yVelocity = 50;
    radius = 10
  }

  function ball:update(dt)
    self.x = self.x + (self.xVelocity * dt)
    self.y = self.y + (self.yVelocity * dt)
  end

  function ball:checkBounds(area)
    if self.x + self.radius > area.width or self.x - self.radius < 0 then
      self.xVelocity = self.xVelocity * -1
    end
    if self.y + self.radius > area.height or self.y - self.radius < 0 then
      self.yVelocity = self.yVelocity * -1
    end
  end

  function ball:draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.circle("fill", self.x, self.y, self.radius, 100)
  end

  return ball
end
