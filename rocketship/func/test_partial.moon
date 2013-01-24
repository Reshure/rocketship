partial = require 'partial'

-- Tests

test_add = ->
  add_together = (x, y) -> x+y
  add_ten = partial(add_together, 10)
  assert add_ten(20)==30, "func.partial: test_add failed."
    
-- Test helper

run_tests = ->
  test_add!
  print "func.partial: all tests passed."
  
run_tests!