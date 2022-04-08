* Aggregate data
use "data/derived/data_clean1.dta", clear
merge 1:1 countryname time using "data/derived/data_clean2.dta"
drop if _merge == 2
drop _merge

* Filter data
set seed 1234
keep time countryname gdp_per_capi population expen_per_capi life_expec

* Transformation
gen lngdp_percapi = log(gdp_per_capi)
gen lnexpen_percapi = log(expen)
gen lnpop = log(population)
gen lnlife_expec = log(life_expec)

save "data/derived/data_final.dta", replace
