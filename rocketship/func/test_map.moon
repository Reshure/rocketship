map = require 'map'

-- Tests

test_add = ->
  a = {1, 2, 3}
  b = {4, 5, 6}
  map(a, (x) -> x + 3)
  for i = 1, #a
    assert a[i]==b[i], "func.map: test_add failed."
    
test_id = ->
  a = {1, 2, 3}
  b = {1, 2, 3}
  map(a, (x) -> x)
  for i = 1, #a
    assert a[i]==b[i], "func.map: test_id failed."
    
test_empty = ->
  assert not (map {}, (x) -> x), "func.map: test_empty failed."

-- Test helper

run_tests = ->
  test_add!
  test_id!
  test_empty!
  print "func.map: all tests passed."
  
run_tests!