% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/areachart.R
\name{AreaChart}
\alias{AreaChart}
\title{Generates an interactive area chart based on the plotly library.}
\usage{
AreaChart(y, x = NULL, transpose = FALSE, aggregate.period = "month",
  y.labels = NULL, x.labels = NULL, type = "Area", title = "",
  title.font.family = "Arial", title.font.color = rgb(44, 44, 44,
  maxColorValue = 255), title.font.size = 16, colors = qColors,
  transparency = 0.4, chart.fill.color = rgb(255, 255, 255, maxColorValue =
  255), chart.fill.transparency = 1, plot.fill.color = rgb(255, 255, 255,
  maxColorValue = 255), plot.fill.transparency = 1, legend.show = TRUE,
  legend.fill = rgb(255, 255, 255, maxColorValue = 255),
  legend.border.color = rgb(44, 44, 44, maxColorValue = 255),
  legend.border.line.width = 0, legend.font.color = rgb(44, 44, 44,
  maxColorValue = 255), legend.font.family = "Arial", legend.font.size = 10,
  legend.position = "right", legend.sort.order = "normal",
  margin.top = 80, margin.bottom = 80, margin.left = 80,
  margin.right = 80, margin.inner.pad = 0, y.title = "",
  y.title.font.color = rgb(44, 44, 44, maxColorValue = 255),
  y.title.font.family = "Arial", y.title.font.size = 12, y.line.width = 1,
  y.line.color = rgb(0, 0, 0, maxColorValue = 255), y.tick.marks = "",
  y.tick.length = 5, y.bounds.minimum = NULL, y.bounds.maximum = NULL,
  y.bounds.units.major = NULL, y.zero.line.width = 1,
  y.zero.line.color = rgb(44, 44, 44, maxColorValue = 255),
  y.position = "left", y.mirror = FALSE, y.grid.width = 1,
  y.grid.color = rgb(225, 225, 225, maxColorValue = 255),
  y.tick.suffix = "", y.tick.prefix = "", y.tick.decimals = 0,
  y.tick.format.manual = "", y.hovertext.suffix = "",
  y.hovertext.prefix = "", y.hovertext.decimals = 2,
  y.hovertext.manual = "", y.tick.angle = 0, y.tick.font.color = rgb(0, 0,
  0, maxColorValue = 255), y.tick.font.family = "Arial",
  y.tick.font.size = 10, x.title = "", x.title.font.color = rgb(44, 44,
  44, maxColorValue = 255), x.title.font.family = "Arial",
  x.title.font.size = 12, x.line.width = 1, x.line.color = rgb(0, 0, 0,
  maxColorValue = 255), x.tick.marks = "", x.tick.length = 5,
  x.bounds.minimum = NULL, x.bounds.maximum = NULL,
  x.bounds.units.major = NULL, x.zero.line.width = 1,
  x.zero.line.color = rgb(44, 44, 44, maxColorValue = 255),
  x.position = "bottom", x.mirror = FALSE, x.grid.width = 0,
  x.grid.color = rgb(225, 225, 225, maxColorValue = 255),
  x.tick.suffix = "", x.tick.prefix = "", x.tick.decimals = 0,
  x.tick.format.manual = "", x.hovertext.suffix = "",
  x.hovertext.prefix = "", x.hovertext.decimals = 2,
  x.hovertext.manual = "", x.tick.angle = 0, x.tick.font.color = rgb(0, 0,
  0, maxColorValue = 255), x.tick.font.family = "Arial",
  x.tick.font.size = 10, x.tick.label.autoformat = TRUE,
  series.marker.show = "none", series.marker.color = qColors,
  series.marker.transparency = 1, series.marker.size = 6,
  series.marker.border.width = 1, series.marker.border.color = qColors,
  series.marker.border.transparency = 1, series.line.width = 0,
  series.line.color = qColors, series.line.transparency = 1,
  hover.mode = "closest", hover.include.source.value = FALSE,
  hover.include.source.value.prefix = "",
  hover.include.source.value.suffix = "",
  hover.include.source.value.percent = FALSE, show.modebar = FALSE)
}
\arguments{
\item{y}{A vector, matrix, list of vectors, data frame, or table.}

\item{x}{A vector over which y will be aggregated. Must have the same
number of elements as y.}

\item{transpose}{Logical; should the final output be transposed?}

\item{aggregate.period}{Character; can be "month", "quarter", "year".
Only relevant when x is a vector of mode date.}

\item{y.labels}{Character vector, overrides chart matrix row names.}

\item{x.labels}{Character vector, overrides chart matrix column names.}

\item{type}{Character; type of chart. Can be "Area", "Stacked Area",
or "100\% Stacked Area".}

\item{title}{Character; chart title.}

\item{title.font.family}{Character; title font family.  Can be "Arial
Black", "Arial", "Comic Sans MS", "Courier New", "Georgia", "Impact",
"Lucida Console", "Lucida Sans Unicode", "Marlett", "Symbol", "Tahoma",
"Times New Roman", "Trebuchet MS", "Verdana", "Webdings"}

\item{title.font.color}{Title font color as a named color in character
format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{title.font.size}{Title font size; default = 10.}

\item{colors}{Vector of colors in RGB format.}

\item{transparency}{Transparency of area fill colors as an alpha value
(0 to 1).}

\item{chart.fill.color}{Chart (borders around plot) background color as
a named color in character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{chart.fill.transparency}{Chart (borders around plot) background
transparency as an alpha value (0 to 1).}

\item{plot.fill.color}{Plot (the plot area proper) background color as
a named color in character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{plot.fill.transparency}{Plot (the plot area proper) background
transparency as an alpha value (0 to 1).}

\item{legend.show}{Logical; show the legend.}

\item{legend.fill}{Legend fill color as a named color in character format
(e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{legend.border.color}{Legend border color as a named color in character
format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{legend.border.line.width}{Integer; width in pixels of the border
around the legend.  0 = no border.}

\item{legend.font.color}{Legend font color as a named color in character
format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{legend.font.family}{Character; legend font family.}

\item{legend.font.size}{Integer; legend font size.}

\item{legend.position}{Where the legend will be placed; can be "left" or
"right" of plot.}

\item{legend.sort.order}{Character; can be "normal" or "reversed" (see
also grouping options, currently excluded from this function)}

\item{margin.top}{Integer; margin between plot area and the top of the
graphic in pixels}

\item{margin.bottom}{Integer; margin between plot area and the top of the
graphic in pixels}

\item{margin.left}{Integer; margin between plot area and the top of the
graphic in pixels}

\item{margin.right}{Integer; margin between plot area and the top of the
graphic in pixels}

\item{margin.inner.pad}{Integer; padding in pixels between plot proper
and axis lines}

\item{y.title}{Character, y-axis title}

\item{y.title.font.color}{Y-axis title font color as a named color in
character format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0,
max = 255)).}

\item{y.title.font.family}{Character; Y-axis title font family}

\item{y.title.font.size}{Integer; y-axis title font size}

\item{y.line.width}{Integer; y-axis line in pixels, 0 = no line}

\item{y.line.color}{Y-axis line color as a named color in character format
(e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{y.tick.marks}{Character; whether and where to show tick marks on the
y axis.  Can be "outside", "inside", "none"}

\item{y.tick.length}{Integer; length of tick marks in pixels.}

\item{y.bounds.minimum}{Integer or NULL; set minimum of range for plotting;
NULL = no manual range set.  Must be less than y.bounds.maximum}

\item{y.bounds.maximum}{= Integer or NULL; set maximum of range for
plotting; NULL = no manual range set.  Must be greater than y.bounds.minimum}

\item{y.bounds.units.major}{Ingeger or NULL; set tick mark distance in
y-axis units between minimum and maximum for plotting; NULL = no manual
range set.}

\item{y.zero.line.width}{Width in pixels of zero line; 0 = no zero line
shown}

\item{y.zero.line.color}{Color of horizontal zero (origo) line as a named
color in character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{y.position}{Character; set y-axis position; can be "left" or "right"}

\item{y.mirror}{Logical; mirror y-axis on other side?}

\item{y.grid.width}{Integer; width of y-grid lines in pixels; 0 = no line}

\item{y.grid.color}{Color of y-grid lines as a named color in character
format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{y.tick.suffix}{Y-axis tick label suffix}

\item{y.tick.prefix}{Y-axis tick label prefix}

\item{y.tick.decimals}{Y-axis tick label decimal places}

\item{y.tick.format.manual}{Overrides tick.prefix, suffix and decimals;
See https://github.com/mbostock/d3/wiki/Formatting#numbers or
https://docs.python.org/release/3.1.3/library/string.html#formatspec}

\item{y.hovertext.suffix}{Y-axis hover text number suffix}

\item{y.hovertext.prefix}{Y-axis hover text number prefix}

\item{y.hovertext.decimals}{Y-axis hover text decimal places}

\item{y.hovertext.manual}{Overrides hovertext.prefix, suffix and decimals;
See https://github.com/mbostock/d3/wiki/Formatting#numbers or
https://docs.python.org/release/3.1.3/library/string.html#formatspec}

\item{y.tick.angle}{Integer, y-axis tick label angle in degrees.
90 = vertical; 0 = horizontal}

\item{y.tick.font.color}{Y-axis tick label font color as a named color
in character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{y.tick.font.family}{Character; y-axis tick label font family}

\item{y.tick.font.size}{Integer; y-axis tick label font size}

\item{x.title}{Character, x-axis title}

\item{x.title.font.color}{x-axis title font color as a named color in
character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{x.title.font.family}{Character; x-axis title font family}

\item{x.title.font.size}{Integer; x-axis title font size}

\item{x.line.width}{Integer; x-axis line in pixels, 0 = no line}

\item{x.line.color}{X-axis line color as a named color in character format
(e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{x.tick.marks}{Character; whether and where to show tick marks on the
y axis.  Can be "outside", "inside", "none"}

\item{x.tick.length}{Integer; length of tick marks in pixels.}

\item{x.bounds.minimum}{Integer or NULL; set minimum of range for plotting;
NULL = no manual range set.  Must be less than x.bounds.maximum}

\item{x.bounds.maximum}{= Integer or NULL; set maximum of range for
plotting; NULL = no manual range set.  Must be greater than x.bounds.minimum}

\item{x.bounds.units.major}{Ingeger or NULL; set tick mark distance in
x-axis units between minimum and maximum for plotting; NULL = no manual
range set.}

\item{x.zero.line.width}{Width in pixels of zero line; 0 = no zero line
shown}

\item{x.zero.line.color}{Color of horizontal zero (origo) line as a named
color in character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{x.position}{Character; set x-axis position; can be "left" or "right"}

\item{x.mirror}{Logical; mirror x-axis on other side?}

\item{x.grid.width}{Integer; width of y-grid lines in pixels; 0 = no line}

\item{x.grid.color}{Color of y-grid lines as a named color in character
format (e.g. "black") or an rgb value (e.g. rgb(0, 0, 0, max = 255)).}

\item{x.tick.suffix}{X.axis tick label suffix}

\item{x.tick.prefix}{X.axis tick label prefix}

\item{x.tick.decimals}{X.axis tick label decimal places}

\item{x.tick.format.manual}{Overrides tick.prefix, suffix and decimals;
See https://github.com/mbostock/d3/wiki/Formatting#numbers or
https://docs.px.hon.org/release/3.1.3/librarx.string.html#formatspec}

\item{x.hovertext.suffix}{X.axis hover text number suffix}

\item{x.hovertext.prefix}{X.axis hover text number prefix}

\item{x.hovertext.decimals}{X.axis hover text decimal places}

\item{x.hovertext.manual}{Overrides hovertext.prefix, suffix and decimals;
See https://github.com/mbostock/d3/wiki/Formatting#numbers or
https://docs.px.hon.org/release/3.1.3/librarx.string.html#formatspec}

\item{x.tick.angle}{Integer, x-axis tick label angle in degrees.
90 = vertical; 0 = horizontal}

\item{x.tick.font.color}{X-axis tick label font color as a named color in
character format (e.g. "black") or an rgb value (e.g.
rgb(0, 0, 0, max = 255)).}

\item{x.tick.font.family}{Character; x-axis tick label font family}

\item{x.tick.font.size}{Integer; x-axis tick label font size}

\item{x.tick.label.autoformat}{Logical; whether to apply built-in auto-
formatting of long (> 15 characters) text labels on the x-axis}

\item{series.marker.show}{Can be "none", "automatic" or a vector referencing
the plotly symbol dictionary using either numerics or strings.}

\item{series.marker.color}{Vector of colors in RGB format to use for the
markers}

\item{series.marker.transparency}{Integer; transparency for series markers
as an alpha value (0 to 1)}

\item{series.marker.size}{Integer; size in pixels of marker}

\item{series.marker.border.width}{Integer; width in pixels of border/line
around series markers; 0 is no line}

\item{series.marker.border.color}{Vector of colors in RGB format for
border/line around series markers}

\item{series.marker.border.transparency}{Integer; transparency of
border/line around series markers as an alpha value (0 to 1)}

\item{series.line.width}{Integer; thickness, in pixels, of the series line}

\item{series.line.color}{Vector of colors in RGB format for series the lines}

\item{series.line.transparency}{Integer; transparency for series lines as an
alpha value (0 to 1)}

\item{hover.mode}{Character or logic; can be FALSE for no hover text, "x" to
show all x-values for the hover point, "y" to show all y-values for the
hover point, or "closest" to show the single, nearest, value.}

\item{hover.include.source.value}{Logical; Include source data point value
in the hover text.}

\item{hover.include.source.value.prefix}{Character; prefix for source data
point value in hover text.}

\item{hover.include.source.value.suffix}{Character; suffix for source data
point value in hover text.}

\item{hover.include.source.value.percent}{Logical; multiplies source data
point value by 100.}

\item{show.modebar}{Logical; whether to show the zoom menu buttons or not.}
}
\description{
\code{AreaChart} generates an area chart.
}
\examples{
data("y.data")
data("x.data")
AreaChart(y = y.data, x = x.data, transpose = TRUE)
}
