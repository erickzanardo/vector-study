function Ball(pos)
  local ball = {
    pos = pos;
    speed = Vector(0, 0);
    acceleration = Vector(10, 5);
    radius = 10
  }

  function ball:update(dt)
    self.speed = self.speed:add(self.acceleration:multiply(dt))
    self.pos = self.pos:add(self.speed:multiply(dt))
  end

  function ball:checkBounds(area)
    if self.pos.x + self.radius > area.width or self.pos.x - self.radius < 0 then
      self.speed.x = self.speed.x * -1
      self.acceleration.x = self.acceleration.x  * -1
    end
    if self.pos.y + self.radius > area.height or self.pos.y - self.radius < 0 then
      self.speed.y = self.speed.y * -1
      self.acceleration.y = self.acceleration.y  * -1
    end
  end

  function ball:draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.circle("fill", self.pos.x, self.pos.y, self.radius, 100)
  end

  return ball
end
