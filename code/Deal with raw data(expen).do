* Deal with raw data(government health expenditure per capita) for aggregating datas
import delimited "data/raw/worldbank-Domestic general government health expenditure per capita-raw.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
drop seriesname countrycode seriescode
rename yr?* expen?*
drop if missing(countryname)
reshape long expen, i(countryname) j(year)
rename year time

* Fix common data quality errors
generate expen_per_capi = real(substr(expen, 1, 7))

* Save data in Stata.
save "data/derived/data_clean2.dta", replace
