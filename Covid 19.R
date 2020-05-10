library(covid19.analytics)

ag <- covid19.data(case = "aggregated")
tsc <- covid19.data(case = "ts-confirmed")
tsa  <- covid19.data(case = "ts-ALL")
summary <- report.summary(Nentries = 5,
               graphical.output = TRUE)

tots.per.location(tsc, geo.loc = c('US', 'Italy'))
par(mar=c(1,1,1,1))

growth.rate(tsc, geo.loc = 'US')

totals.plt(tsa)

# SIR Model
generate.SIR.model(tsc, 'US', tot.population = 3282000000)