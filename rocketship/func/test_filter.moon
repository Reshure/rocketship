filter = require 'filter'

-- Tests

test_higher = ->
  a = {1, 2, 3, 4, 5}
  b = {4, 5}
  filter a, (x) -> (x > 3)
  for i = 1, #a
    assert a[i]==b[i], "func.filter: test_higher failed."
    
test_id = ->
  a = {1, 2, 3, 4, 5}
  b = {1, 2, 3, 4, 5}
  filter a, (x) -> true
  for i = 1, #a
    assert a[i]==b[i], "func.filter: test_id failed."

-- Test helper

run_tests = ->
  test_higher!
  test_id!
  print "func.filter: all tests passed."
  
run_tests!