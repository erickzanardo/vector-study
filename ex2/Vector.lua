function Vector(x, y)
  local vector = {
    x = x;
    y = y
  }

  function vector:add(vector)
    return Vector(self.x + vector.x, self.y + vector.y)
  end

  function vector:scalarMultiply(value)
    return Vector(self.x * value, self.y * value)
  end

  return vector
end
