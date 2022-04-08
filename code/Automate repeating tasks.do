* Automate repeating tasks using Stata "for" loops.
use "data/derived/data_clean1.dta", clear
forvalues t = 2010/2018 {
	summarize gdp_per_capi population life_expec if time == `t'
}
