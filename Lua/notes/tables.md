Tables allow you to store things in a way that you can access by name or order

```
book = {
  title: "Cosmos",
  author: "Carl Sagan",
  genre: "Science"
}

>=book.title -- Cosmos

book.stars = 5 -- new item

key = "title"

>=book[key] -- Cosmos
```

unassigned props return special value nil

pairs(table) returs all pairs:

```
for key, value in pairs(table) do
  ...
end
```

`dofile()` just takes in the file -- doesn't check if already loaded, etc. (later we'll use lua's module system)

lua starts array indicies at 1.

You can combine array-type and dictionary-type tables. Most separate them with a semicolon:

```
ice_cream_scoops = {
  "vanilla",
  "strawberry";

  sprinkles = true
}
```

### Metatables

Similar to JS prototypes

```

mt = {
  __tostring = table_to_string
}

setmetatable(ice_cream_scoops, mt)
```

__index and __newindex for read/write

you can also override arithmetic operators (__add and __sub)
