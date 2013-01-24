-- map (tb, fn)
--
-- Applies function fn to every element of the table tb.
--
-- The function has to be in the form:
-- f(x) where x is an element of the table.
--

map = (tb, fn) ->
  for i = 1, #tb
    tb[i] = fn(tb[i])

return map