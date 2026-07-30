# Test that all datasets load correctly
test_that("All datasets load without error", {
  data(gnps)
  data(massbank)
  data(merlin)
  data(multims2)
  data(enveda)
  data(normansusdat)
  data(wikidata)
  
  expect_true(is.data.frame(gnps))
  expect_true(is.data.frame(massbank))
  expect_true(is.data.frame(merlin))
  expect_true(is.data.frame(multims2))
  expect_true(is.data.frame(enveda))
  expect_true(is.data.frame(normansusdat))
  expect_true(is.data.frame(wikidata))
})

# Test that required columns are present
test_that("Datasets have required columns", {
  data(gnps)
  
  required_cols <- c("mz", "intensity", "source_reference", "source_license")
  expect_true(all(required_cols %in% colnames(gnps)))
})

# Test that mz and intensity are list columns
test_that("mz and intensity are list columns", {
  data(gnps)
  
  expect_true(is.list(gnps$mz))
  expect_true(is.list(gnps$intensity))
})

# Test that mz and intensity have consistent length
test_that("mz and intensity have same length per spectrum", {
  data(gnps)
  
  for (i in seq_len(min(nrow(gnps), 100))) {  # Check first 100
    expect_equal(length(gnps$mz[[i]]), length(gnps$intensity[[i]]))
  }
})
