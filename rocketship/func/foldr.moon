-- foldr (tb, fn)
--
-- Calls function fn repeatedly with the accumulated value and the current
-- value by looping over the table tb. This reduces the table to a single value.
--
-- The function has to be in the form:
-- f(x, acc) where x is the table element and acc is the accumulator.
--
-- The accumulator is on the right, because foldr starts on the right-hand side
-- of the table.
--

foldr = (tb, fn) ->
  acc = tb[1]
  for i = 2, #tb
    acc = fn(tb[i], acc)
  acc

return foldr