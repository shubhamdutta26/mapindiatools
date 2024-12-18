test_that("state codes load correctly", {
  code <- fetch_codes()
  state_code <- fetch_codes("state")
  states_code <- fetch_codes("states")

  expect_identical(code, state_code)
  expect_identical(code, states_code)
  expect_identical(state_code, states_code)

  expect_equal(length(code), 3)
  expect_equal(length(code[[1]]), 37)

  expect_equal(code[[1, "abbr"]], "AN")
  expect_equal(code[[1, "code11"]], "35")
  expect_equal(code[[1, "stname"]], "Andaman & Nicobar")

  expect_equal(code[[37, "abbr"]], "WB")
  expect_equal(code[[37, "code11"]], "19")
  expect_equal(code[[37, "stname"]], "West Bengal")
})

test_that("district codes load correctly", {
  district_code <- fetch_codes("district")
  districts_code <- fetch_codes("districts")

  expect_identical(district_code, districts_code)

  expect_equal(length(district_code), 4)
  expect_equal(length(district_code[[1]]), 755)

  expect_equal(district_code[[1, "dtname"]], "Nicobars")
  expect_equal(district_code[[1, "abbr"]], "AN")
  expect_equal(district_code[[1, "stname"]], "Andaman & Nicobar")
  expect_equal(district_code[[1, "code11"]], "35638")

  expect_equal(district_code[[755, "dtname"]], "Uttar Dinajpur")
  expect_equal(district_code[[755, "abbr"]], "WB")
  expect_equal(district_code[[755, "stname"]], "West Bengal")
  expect_equal(district_code[[755, "code11"]], "19330")
})
