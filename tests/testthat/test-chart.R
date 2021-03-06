library(testthat)

types <- c("Area", "Stacked Area", "100% Stacked Area",
           "Bar", "Stacked Bar", "100% Stacked Bar",
           "Column", "Stacked Column", "100% Stacked Column",
           "Line", "Pie", "Donut", "Radar")

stacked.types <- c("Stacked Area", "100% Stacked Area",
                   "Stacked Bar", "100% Stacked Bar",
                   "Stacked Column", "100% Stacked Column")

hundred.percent.stacked.types <- c("100% Stacked Area", "100% Stacked Bar", "100% Stacked Column")

area.or.line.charts <- c("Area", "Stacked Area", "100% Stacked Area", "Line")

unnamed.vector <- c(5, 6, 2, 1.5, 9, 2.2)
named.vector <- structure(c(5, 6, 2, 1.5, 9, 2.2), .Names = c("A", "B", "C", "D", "E", "F"))
unnamed.matrix <- structure(c(1.59, 0.44, 2.52, 0.19, 0.71, 0.18, 0.18, 0.61, 0.08,
                              1.07, 1.31, 0.45, 0.17, 2.87, 2.08, 0.53, 2.62, 1.88, 1.73, 0.12),
                            .Dim = c(5L, 4L))
named.matrix <- structure(c(1.59, 0.44, 2.52, 0.19, 0.71, 0.18, 0.18, 0.61, 0.08,
                            1.07, 1.31, 0.45, 0.17, 2.87, 2.08, 0.53, 2.62, 1.88, 1.73, 0.12),
                          .Dim = c(5L, 4L), .Dimnames = list(c("Row 1", "Row 2", "Row 3", "Row 4", "Row 5"),
                                                             c("Column 1", "Column 2", "Column 3", "Column 4")))
missing <- structure(c(NA, NA, NA, NA, 0.71, NA, 0.18, 0.61, 0.08,
                            1.07, NA, 0.45, 0.17, 2.87, NaN, 0.53, 2.62, 1.88, 1.73, 0.12),
                          .Dim = c(5L, 4L), .Dimnames = list(c("Row 1", "Row 2", "Row 3", "Row 4", "Row 5"),
                                                             c("Column 1", "Column 2", "Column 3", "Column 4")))
row.sum.zero <- structure(c(0, 0.44, 2.52, 0.19, 0.71, 0, 0.18, 0.61, 0.08,
                              1.07, 0, 0.45, 0.17, 2.87, 2.08, 0, 2.62, 1.88, 1.73, 0.12),
                            .Dim = c(5L, 4L))
duplicate.rows <- structure(c(1.59, 0.44, 2.52, 0.19, 0.71, 0.18, 0.18, 0.61, 0.08,
                              1.07, 1.31, 0.45, 0.17, 2.87, 2.08, 0.53, 2.62, 1.88, 1.73, 0.12),
                          .Dim = c(5L, 4L), .Dimnames = list(c("Row", "Row 2", "Row", "Row 4", "Row 5"),
                                                             c("Column 1", "Column 2", "Column 3", "Column 4")))

dat <- data.frame(named.matrix)

three.dimensional <- structure(1:60, .Dim = 3:5)

table.with.statistic <- structure(c(1.59, 0.44, 2.52, 0.19, 0.71, 0.18, 0.18, 0.61, 0.08,
            1.07, 1.31, 0.45, 0.17, 2.87, 2.08, 0.53, 2.62, 1.88, 1.73, 0.12), .Dim = c(5L, 4L),
            .Dimnames = list(c("Row 1", "Row 2", "Row 3", "Row 4", "Row 5"),
                             c("Column 1", "Column 2", "Column 3", "Column 4")),
            statistic = "%", questions = "Q1")

monthly <- structure(c(7.34177215189873, 9.36708860759494, 9.36708860759494,
                      7.84810126582278, 8.60759493670886, 8.86075949367089, 10.6329113924051,
                      5.31645569620253, 8.35443037974684, 7.84810126582278, 9.11392405063291,
                      7.34177215189873, 7.40740740740741, 6.91358024691358, 9.62962962962963,
                      10.8641975308642, 6.41975308641975, 7.40740740740741, 8.64197530864197,
                      8.39506172839506, 8.64197530864197, 8.88888888888889, 8.64197530864197,
                      8.14814814814815, 7.375, 8.125, 9.5, 9.375, 7.5, 8.125, 9.625,
                      6.875, 8.5, 8.375, 8.875, 7.75), .Dim = c(12L, 3L),
                    statistic = "Column %", .Dimnames = list(
                          c("January 2012", "February 2012", "March 2012", "April 2012",
                            "May 2012", "June 2012", "July 2012", "August 2012", "September 2012",
                            "October 2012", "November 2012", "December 2012"), c("Male", "Female", "NET")),
                    name = "Interview Date by Gender",
                    questions = c("Interview Date", "Gender [Cola Tracking - January to December.sav]"))

arr <- structure(c(13.4556574923547, 11.9266055045872, 10.0917431192661,
                     11.0091743119266, 10.7033639143731, 8.25688073394496, 12.2324159021407,
                     15.5963302752294, 6.72782874617737, 100), .Dim = 10L, statistic = "%", .Dimnames = list(
                     c("18 to 24", "25 to 29", "30 to 34", "35 to 39", "40 to 44",
                     "45 to 49", "50 to 54", "55 to 64", "65 or more", "NET")),
                       name = "Q3. Age", questions = c("Q3. Age", "SUMMARY"))

date.with.gap <- structure(c(0.414763916575021, 2.0711222190476, 1.86615883632686,
                                2.73274539424782, 3.76705083360367, 0.393770872527476, 9.84321542017505,
                                4.53164907368953, 8.14473341079688, 5.63350810049821, 27.2610331276821,
                                22.4746584132118, 9.38304940157972, 21.1757437410639, 14.3059312070915,
                                9.546186174272, 11.5315834290657, 25.2422379009045, 9.3591064099846,
                                7.04261623098657), .Names = c("01/07/2017", "02/07/2017", "03/07/2017",
                                "04/07/2017", "05/07/2017", "06/07/2017", "07/07/2017", "08/07/2017",
                                "09/07/2017", "10/07/2017", "12/07/2017", "13/07/2017", "14/07/2017",
                                "15/07/2017", "16/07/2017", "17/07/2017", "18/07/2017", "19/07/2017",
                                "20/07/2017", "21/07/2017"))

search.share <- structure(c(1.47058823529412, 14.2857142857143, 22.2222222222222,
                                6.25, 60, 41.6666666666667, 26.3157894736842, 53.8461538461538,
                                42.8571428571429, 45, 57.1428571428571, 55.5555555555556, 78.5714285714286,
                                77.7777777777778, 66.6666666666667, 59.2592592592593, 60, 90,
                                100, 78.9473684210526, 80, 83.3333333333333, 100, NaN, 85.7142857142857,
                                NaN, 50, 100, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN,
                                NaN, NaN), .Names = c("Week 1 n:136", "2 n:21", "3 n:18", "4 n:16",
                                "5 n:5", "6 n:12", "7 n:19", "8 n:13", "9 n:21", "10 n:20", "11 n:7",
                                "12 n:9", "13 n:14", "14 n:18", "15 n:9", "16 n:27", "17 n:10",
                                "18 n:10", "19 n:6", "20 n:19", "21 n:10", "22 n:6", "23 n:4",
                                "24 n:0", "25 n:7", "26 n:0", "27 n:2", "28 n:1", "29 n:0", "30 n:0",
                                "31 n:0", "32 n:0", "33 n:0", "34 n:0", "35 n:0", "36 n:0", "37 n:0",
                                "38 n:0", "39 n:0", "40 n:0"))

missing2 <- cbind(A=search.share, B=1:length(search.share))
acquisitions <- structure(c(2155.87723461478, 2155.87723461478, 10024.8141116912,
    6467.63170384433, 2155.87723461478, 0, 3233.81585192216, 14875.5260243632,
    4732.81585192216, 14013.1703844328, 14120.9776934029, 1077.93861730739,
    2155.87723461478, 6467.62379370353, 3341.60734061066, 1077.93861730739,
    7545.57032115172, 8623.5089384591, 9162.4663819016, 6359.75320360702,
    4311.74655908875, 4530.35912039234, 6795.53077044771, 0, 4530.35912039234,
    8966.32653061224, 5662.94890049043, 10193.300110742, 5096.65401044139,
    13591.0536307546, 7588.34045246005, 4530.35912039234, 4530.35912039234,
    3397.76934029426, 6795.53077044771, 2265.17956019617, 9319.09507989242,
    11325.8898908401, 5662.94890049043, 6795.53077044771, 2265.17956019617,
    22085.4690713495, 5996.60654959658, 7270.13921847809, 0, 0, 3870.11746559089,
    1290.03915519696, 2580.07831039393, 1290.03915519696, 2580.07831039393,
    1290.03915519696, 7740.23493118178, 0, 0, 10320.3132415757, 6445.77942572378,
    10320.3132415757, 20640.6264831514, 0, 3762.39467647524, 1290.03915519696,
    2580.07831039393, 9675.29366397722, 10707.3249881348, 2580.07831039393,
    6450.19577598481, 16125.489439962, 9030.27408637874, 10320.3132415757,
    11610.3523967727, 7740.23493118178, 16254.4933554817, 3870.11746559089,
    3870.11746559089, 11756.9184068976, 6449.31767125455, 10198.4762102515,
    8256.25059326056, 0, 10335.9994462901, 15738.4776934029, 7740.23493118178,
    20640.6264831514, 19350.5873279544, 26333.1340966619, 2838.34440753045,
    10147.0812569214, 1305.72535991141, 4197.2, 1499, 0, 4076.6294494542,
    4047.3, 4823.43133997785, 2804.72535991141, 2554.064831514, 6920.94091124822,
    3882.66397721879, 0, 4303.72535991141, 8244.5, 8800.72535991141,
    1499, 4497, 5500.9851289353, 127415, 2998, 4303.72535991141,
    7301.72535991141, 4293.80398671096, 1305.72535991141, 4497, 4197.2,
    1499, 2611.45071982281, 11798.7253599114, 6136.90919158361, 7500.764831514,
    8618.98038285082, 4309.49019142541, 1499, 2998, 4374.514831514,
    11354.7901914254, 4497, 9265.03311184939, 2611.45071982281, 1499,
    6905.25470653378, 11018.535674735, 10395.14269894, 5996, 1499,
    7495, 4497, 5996, 8994, 4497, 2998, 0, 7495, 10493, 21967.07,
    17088.6, 49017.3, 8994, 2998, 4497, 17238.5, 4497, 6745.5, 4497,
    5424.96566998893, 17688.2, 4497, 7495, 15289.8, 26982, 7495,
    7495, 5996, 8994, 8994, 11992, 7869.76, 9593.6, 1499, 1199.2,
    7495, 24161.61, 20986, 9553.19031798766, 20863.81, 32598.1, 39743.88
    ), .Dim = c(44L, 4L), .Dimnames = list(c("2014-01", "2014-02",
    "2014-03", "2014-04", "2014-05", "2014-06", "2014-07", "2014-08",
    "2014-09", "2014-10", "2014-11", "2014-12", "2015-01", "2015-02",
    "2015-03", "2015-04", "2015-05", "2015-06", "2015-07", "2015-08",
    "2015-09", "2015-10", "2015-11", "2015-12", "2016-01", "2016-02",
    "2016-03", "2016-04", "2016-05", "2016-06", "2016-07", "2016-08",
    "2016-09", "2016-10", "2016-11", "2016-12", "2017-01", "2017-02",
    "2017-03", "2017-04", "2017-05", "2017-06", "2017-07", "2017-08"
    ), c("Australia", "United Kingdom", "Other", "United States")))


    # Input types

    for (t in types)
    {
        outcome <- if (t %in% stacked.types) "requires more than one series" else NA
        test_that(paste(t, "- unnamed vector input"), {
        expect_error(print(Chart(unnamed.vector, type = t)), outcome)
    })
    test_that(paste(t, "- named vector input"), {
        expect_error(print(Chart(named.vector, type = t)), outcome)
    })

    outcome <- if (t == "Donut")
        "The table supplied is two-dimensional and cannot be displayed as a donut chart"
    else
        NA
    test_that(paste(t, "- unnamed matrix input"), {
        expect_error(print(Chart(unnamed.matrix, type = t)), outcome)
    })
    test_that(paste(t, "- named matrix input"), {
        expect_error(print(Chart(named.matrix, type = t)), outcome)
    })
    test_that(paste(t, "- data frame input"), {
        expect_error(print(Chart(dat, type = t)), outcome)
    })
    test_that(paste(t, "- transpose"), {
        expect_error(print(Chart(dat, type = t, transpose = TRUE)), outcome)
    })
}

# Missing values

test_that("Area - missing", {
    expect_warning(print(Chart(missing, type = "Area")), "Missing values have been interpolated or omitted.")
})

test_that("Bar - missing", {
    expect_warning(print(Chart(missing, type = "Bar")), "Missing values have been set to zero.")
})

test_that("Column - missing", {
    expect_warning(print(Chart(missing, type = "Column")), "Missing values have been set to zero.")
})

test_that("Pie - missing", {
    expect_warning(print(Chart(missing, type = "Pie")), "Missing and negative values have been omitted.")
})

for (t in stacked.types)
{
    test_that(paste(t, "- single series"), {
        expect_error(print(Chart(named.vector, type = t)), "requires more than one series.")
    })
}

for (t in stacked.types)
{
    test_that(paste(t, "- missing"), {
        expect_error(print(suppressWarnings(Chart(missing, type = t)),
                     "Stacked charts cannot be produced with missing or negative values."))
    })
}

for (t in hundred.percent.stacked.types)
{
    test_that(paste(t, "- row sum zero"), {
        expect_error(print(Chart(row.sum.zero, type = t)),
                     "100% stacked charts cannot be produced with rows that do not contain positive values.")
    })
}

for (t in types)
{
    test_that(paste(t, "- duplicate rows"), {
        expect_error(print(Chart(duplicate.rows, type = t)),
                     "Row names of the input table must be unique.")
    })
}

for (t in area.or.line.charts)
{
    test_that(paste(t, "- numeric labels"), {
        expect_error(print(Chart(unnamed.matrix, type = t)), NA)
    })
}

test_that("Area - opacity", {
    expect_warning(print(Chart(unnamed.matrix, type = "Area", opacity = 1)),
        "Displaying this chart with opacity set to 1 will make it difficult to read as some data series may be obscured.")
})

for (t in c("Line", "Pie", "Donut"))
{
    test_that(paste(t, "- opacity"), {
        expect_warning(print(Chart(named.vector, type = t, opacity = 1)),
                       "The opacity parameter is only valid for area, bar and column charts.")
    })
}

test_that("3D data", {
    expect_warning(print(Chart(three.dimensional, type = "Column")),
                   "The input has more than 2 dimensions, only the first 2 have been displayed.")
})

test_that("Percentage statistics", {
    expect_warning(print(Chart(table.with.statistic, type = "Pie")),
        paste("The percentage values in the table do not sum to 100%.",
              "Consider choosing a different statistic for the table."))
})

test_that("Chart type check", {
    expect_error(print(Chart(unnamed.matrix, type = "invalid type")), "The input chart type is not supported.")
})

for (t in c("Line", "Bar", "Column"))
{
    test_that(paste(t, "- dates"), {
        expect_error(print(Chart(monthly, t)), NA)
    })
}

test_that("Array", {
    expect_error(Chart(y = arr, type = "Area"), NA)
})


tab6 <- structure(c(14, 51, 46, 34, 62, 45, 21, 96, 61, 45, 85, 60, 46,
62, 66, 101, 89, 81, 137, 75, 80, 120, 40, 78, 108, 40, 58, 25,
17, 50, 1, 3, 16, 2, 34, 13, 327, 327, 327, 327, 327, 327), .Dim = 6:7, statistic = "n", .Dimnames = list(
    c("Coca Cola", "Diet Coke", "Coke Zero", "Pepsi", "Pepsi Light",
    "Pepsi Max"), c("Hate", "Dislike", "Neither like nor dislike",
    "Like", "Love", "Don t Know", "NET")), name = "Q6. Brand Attitude", questions = c("Q6. Brand Attitude",
"SUMMARY"))
test_that("X-axis reversed", {
    expect_error(Chart(tab6, type="Line", x.data.reversed = T), NA)
})


test_that("Line of best fit", {
    print(Chart(acquisitions[,1], fit.type="Smooth", fit.ignore.last=F))
    print(Chart(acquisitions[,1], fit.type="Smooth", fit.ignore.last=T))

    xx <- c(1:200 * abs(rnorm(200)),0)
    print(Chart(xx, fit.type="Smooth", fit.ignore.last=F))
    print(Chart(xx, fit.type="Smooth", fit.ignore.last=T))

    })

test_that("Color palette warnings", {
    expect_warning(Chart(named.vector, colors="Reds"), "Only the first color of the palette used")
    expect_warning(Chart(named.vector, type="Pie", colors="Custom color",
                         colors.custom.color = "red"), "Only a single color specified")
    expect_warning(Chart(named.vector[1:4], type="Pie", colors="Custom palette", colors.custom.palette = "red,orange,abc,blue"), "Invalid color 'abc' replaced with '#000000'")
})

test_that("Annotations", {
    a1 <- letters[1:length(named.vector)]
    a2 <- matrix(NA, nrow(named.matrix), ncol(named.matrix))
    a2[1,1] <- "first entry"
    a2[2,3] <- "random"
    a2[1,4] <- "etc"

    for (type in c("Line", "Area", "Bar", "Column"))
    {
        expect_error(Chart(named.vector, type=type, annotations=a1), NA)
        expect_error(Chart(named.matrix, type=type, annotations=a2), NA)
        expect_error(Chart(named.matrix, type=type, annotations=t(a2)))
    }
})
