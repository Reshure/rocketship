-- foldl (tb, fn)
--
-- Calls function fn repeatedly with the accumulated value and the current
-- value by looping over the table tb. This reduces the table to a single value.
--
-- The function has to be in the form:
-- f(acc, x) where acc is the accumulator and x is the table element.
--
-- The accumulator is on the left, because foldl starts on the left-hand side
-- of the table.
--

foldl = (tb, fn) ->
  acc = tb[1]
  for i = 2, #tb
    acc = fn(acc, tb[i])
  acc

return foldl