context("engine")
library(testthatsomemore)

describe("Invalid inputs", {
  test_that("it errors when an non-engine directory is passed", {
    expect_error(syberia_engine(tempfile()), "No syberia engine")
  })
})

describe("Engine object", {
  test_that("it can find an engine with an application.r file", {
    testthatsomemore::within_file_structure(list("config" = list("application.r")), {
      expect_false(is.null(syberia_engine(tempdir)))
    })
  })
})
