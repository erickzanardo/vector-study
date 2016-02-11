function Ball(pos)
  local ball = {
    pos = pos;
    speed = Vector(0, 0);
    acceleration = Vector(10, 5);
    radius = 10
  }

  function ball:update(dt)
    local xDirection
    local yDirection

    if self.speed.x < 0 then xDirection = -1 else xDirection = 1 end
    if self.speed.y < 0 then yDirection = -1 else yDirection = 1 end

    self.speed = self.speed:abs()
    self.speed = self.speed:add(self.acceleration:multiply(dt))

    self.speed.x = self.speed.x * xDirection
    self.speed.y = self.speed.y * yDirection

    self.pos = self.pos:add(self.speed:multiply(dt))
  end

  function ball:checkBounds(area)
    if self.pos.x + self.radius > area.width or self.pos.x - self.radius < 0 then
      self.speed.x = self.speed.x * -1
    end
    if self.pos.y + self.radius > area.height or self.pos.y - self.radius < 0 then
      self.speed.y = self.speed.y * -1
    end
  end

  function ball:draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.circle("fill", self.pos.x, self.pos.y, self.radius, 100)
  end

  return ball
end
