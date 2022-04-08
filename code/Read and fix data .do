* Read .csv data in in Stata
import delimited "data/raw/worldbank-lifeexpectancy-raw.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear

* Fix common data quality errors in Stata
generate gdp_per_capi = real(substr(gdppercapitapppconstant2011inter, 1, 7))
generate population = real(substr(populationtotalsppoptotl, 1, 7))
generate life_expec = real(substr(lifeexpectancyatbirthtotalyearss, 1, 7))

* Sort data by time and countryname
sort countryname time

* Save data in Stata.
save "data/derived/data_clean1.dta", replace
