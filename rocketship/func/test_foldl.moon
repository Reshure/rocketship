foldl = require 'foldl'

-- Tests

test_sum = ->
  a = {1, 2, 3, 4, 5}
  sum = foldl a, (acc, x) -> acc + x
  assert sum==(1+2+3+4+5), "func.foldl: test_sum failed."
  
test_prod = ->
  a = {1, 2, 3, 4, 5}
  prod = foldl a, (acc, x) -> acc * x
  assert prod==(1*2*3*4*5), "func.foldl: test_prod failed."
  
test_concat = ->
  a = {"can", " ", "we", " ", "fold", " ", "this?"}
  message = foldl a, (acc, x) -> acc .. x
  assert message=="can we fold this?", "func.foldl: test_concat failed."
  
test_pure = ->
  -- foldl shouldn't modify the original tb.
  a = {1, 2, 3, 4, 5}
  b = {1, 2, 3, 4, 5}
  _ = foldl a, (acc, x) -> acc + x
  for i = 1, #a
    assert a[i] == b[i], "func.foldl: test_pure failed."

test_empty = ->
  -- foldl should return an empty tb if an empty tb is passed.
  assert not (foldl {}, (acc, x) -> acc), "func.foldr: test_empty failed."
      
-- Test helper
run_tests = ->
  test_sum!
  test_prod!
  test_concat!
  test_pure!
  test_empty!
  print "func.foldl: all tests passed."
  
run_tests!