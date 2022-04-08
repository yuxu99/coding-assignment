* Run regressions and save tables to output folder
reg lnlife_expec lngdp_percapi lnpop lnexpen_percapi, robust
outreg2 using "output/reg_full.xlsx", append ctitle(life expectancy)

* Creating a graph and saving it to output folder
scatter lnlife_expec lnexpen_percapi, mcolor(red) title("The effect of the government health expenditure") saving("output/scatter_plot.pdf", replace)
