-- partial (fn, arg1)
--
-- Creates a partial function with the first argument already applied. It 
-- returns a new function in which you only need to add the second argument.
--
-- It only works on a function which takes two arguments.
-- 

-- TODO: make it work for more arguments?

partial = (fn, arg1) ->
  (arg2) -> fn(arg1, arg2)
  
return partial