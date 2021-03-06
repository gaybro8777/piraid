context("irt_model")

test_that("Constructor for simple scale", {
    df <- data.frame(ITEM=c(1, 1, 5, 5), DV=c(0, 1, 0, 1))
    scale <- create_scale_from_df(df)
    model <- irt_model(scale)
    expect_equal(model$scale, scale) # scale object is integrated in model
    
    expect_true(is.irt_model(model))
    expect_false(is.irt_model(scale))
})

test_that("Constructor for scale infered from file", {
    scale_source_file <- system.file("extdata","hra-score-data.csv", package="piraid")
    scale <- create_scale_from_csv(file = scale_source_file)
    model <- irt_model(scale)
    expect_equal(model$scale, scale) # scale object is integrated in model 
    expect_equal(model$dataset, scale_source_file)
    
    scale$source_file <- "notexisting"
    expect_warning(model <- irt_model(scale), regexp = "file .* not exist")
    expect_null(model$dataset)
})
