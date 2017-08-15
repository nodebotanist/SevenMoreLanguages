
```
Villain = {
  health = 100

  new = function(self, name) --constructor
    local obj = {
      name = name,
      health = self.health
    }

    return obj
  end

  take_hit = function(self) 
    self.health = self.health - 10
  end
}

dietrich = Villain.new(dietrich, "Dietrich")
Villain.take_hit(dietrich) -- health = 90
```

#### Inheritance

```

Villain = {
  health = 100,
  new = function(self, name) 
    local obj = {
      name = name,
      health = self.health
    }

    setmetatable(obj, self) -- these two lines delegate field lookup to Villain
    self.__index = self
}
```

You can stop passing around self with the : syntax

```

Villain = { health = 100 }

functionm Villain:new(name)
  -- same impl as before
end

dietrich = new Villain("Dietrich")
dietrich.take_hit() -- health is 90

SuperVillain = Villain:new()

SuperVillain:take_hit = function() 
  self.health = self.health - 5
end

toht = SuperVillain:new("Toht")
toht:take_hit()  -- health is 95

```