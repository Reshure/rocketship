-- filter (tb, fn)
--
-- Returns the table tb with all the values that satisfy the 
-- predicate function fn. 
-- 
-- The function has to be in the form:
-- f(x) -> bool, where x is an element of the table.
--

filter = (tb, fn) ->
  -- make a copy
  copy = {}
  for i = 1, #tb
    copy[i] = tb[i]
  -- loop over the copy and do the deletion on the real tb
  offset = 0
  for i = 1, #copy
    if not fn(copy[i])
      table.remove(tb, (i - offset))
      offset += 1
  
return filter