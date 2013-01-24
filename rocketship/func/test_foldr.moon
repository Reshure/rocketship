foldr = require 'foldr'

-- Tests

test_sum = ->
  a = {1, 2, 3, 4, 5}
  sum = foldr a, (acc, x) -> acc + x
  assert sum==(1+2+3+4+5), "func.foldr: test_sum failed."
  
test_prod = ->
  a = {1, 2, 3, 4, 5}
  prod = foldr a, (acc, x) -> acc * x
  assert prod==(1*2*3*4*5), "func.foldr: test_prod failed."
  
test_concat = ->
  a = {"can!", " ", "we", " ", "fold", " ", "this?"}
  message = foldr a, (acc, x) -> acc .. x
  assert message=="this? fold we can!", "func.foldr: test_concat failed."
  
test_pure = ->
  -- foldr shouldn't modify the original tb.
  a = {1, 2, 3, 4, 5}
  b = {1, 2, 3, 4, 5}
  _ = foldr a, (acc, x) -> acc + x
  for i = 1, #a
    assert a[i] == b[i], "func.foldr: test_pure failed."
    
test_empty = ->
  -- foldr should return an empty tb if an empty tb is passed.
  assert not (foldr {}, (acc, x) -> acc), "func.foldr: test_empty failed."

-- Test helper
run_tests = ->
  test_sum!
  test_prod!
  test_concat!
  test_pure!
  test_empty!
  print "func.foldr: all tests passed."
  
run_tests!