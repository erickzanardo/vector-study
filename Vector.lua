function Vector(x, y)
  local vector = {
    x = x;
    y = y
  }

  function vector:add(vector)
    return Vector(self.x + vector.x, self.y + vector.y)
  end

  function vector:multiply(value)
    return Vector(self.x * value, self.y * value)
  end

  function vector:divide(value)
    return Vector(self.x / value, self.y / value)
  end

  function vector:abs()
    return Vector(math.max(self.x, self.x * -1), math.max(self.y, self.y * -1))
  end

  function vector:magnitude()
    return math.sqrt(self.x * self.x + self.y * self.y)
  end

  function vector:print()
    print(self.x .. " - " .. self.y)
  end

  return vector
end
