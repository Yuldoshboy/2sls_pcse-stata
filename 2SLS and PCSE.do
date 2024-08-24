/////unit root tests/////

sum lngdp lnfdi lntrade lnins lnsis lneducation lneis lnenergy lnTrsCmn lnagr lnimc lntrtout lnaid lnhc lngovex
sum lngdp lnfdi lntrade lnins lnsis lneducation lnhc lngovex lnlf lnaid lneis lnenergy lnTrsCmn lnagr lnimc lntrtout
xtset id year
xtunitroot ips lngdp, trend
xtunitroot ips d.lngdp, trend
xtunitroot ips lnfdi , trend
xtunitroot ips d.lnfdi , trend
xtunitroot ips lntrade , trend
xtunitroot ips d.lntrade , trend
xtunitroot ips lnins , trend
xtunitroot ips d.lnins , trend
xtunitroot ips lnsis , trend
xtunitroot ips lngovex , trend
xtunitroot ips d.lngovex , trend
xtunitroot ips lnlf , trend
xtunitroot ips d.lnlf , trend
xtunitroot ips lnaid , trend
xtunitroot ips d.lnaid , trend
xtunitroot ips lnsis , trend
xtunitroot ips d.lnsis , trend
xtunitroot ips lneducation , trend
xtunitroot ips d.lneducation , trend
xtunitroot ips lneis , trend
xtunitroot ips d.lneis , trend
xtunitroot ips lnenergy , trend
xtunitroot ips d.lnenergy , trend
xtunitroot ips lnTrsCmn , trend
xtunitroot ips d.lnTrsCmn , trend
xtunitroot ips lnagr , trend
xtunitroot ips d.lnagr , trend
xtunitroot ips lnimc , trend
xtunitroot ips d.lnimc , trend
xtunitroot ips lntrtout , trend
xtunitroot ips d.lntrtout , trend
xtunitroot fisher lngdp, dfuller lags(2)
xtunitroot fisher d.lngdp, dfuller lags(2)
xtunitroot fisher lnfdi , dfuller lags(2)
xtunitroot fisher d.lnfdi , dfuller lags(2)
xtunitroot fisher lntrade , dfuller lags(2)
xtunitroot fisher d.lntrade , dfuller lags(2)
xtunitroot fisher lnins , dfuller lags(2)
xtunitroot fisher d.lnins , dfuller lags(2)
xtunitroot fisher lnhc , dfuller lags(2)
xtunitroot fisher d.lnhc , dfuller lags(2)
xtunitroot fisher lngovex , dfuller lags(2)
xtunitroot fisher d.lngovex , dfuller lags(2)
xtunitroot fisher lnlf , dfuller lags(2)
xtunitroot fisher d.lnlf , dfuller lags(2)
xtunitroot fisher lnaid , dfuller lags(2)
xtunitroot fisher D.lnaid , dfuller lags(2)
xtunitroot fisher lnsis , dfuller lags(2)
xtunitroot fisher D.lnsis , dfuller lags(2)
xtunitroot fisher lneducation , dfuller lags(2)
xtunitroot fisher d.lneducation , dfuller lags(2)
xtunitroot fisher lneis , dfuller lags(2)
xtunitroot fisher d.lneis , dfuller lags(2)
xtunitroot fisher lnenergy , dfuller lags(2)
xtunitroot fisher d.lnenergy , dfuller lags(2)
xtunitroot fisher lnTrsCmn , dfuller lags(2)
xtunitroot fisher d.lnTrsCmn , dfuller lags(2)
xtunitroot fisher lnagr , dfuller lags(2)
xtunitroot fisher d.lnagr , dfuller lags(2)
xtunitroot fisher lnimc , dfuller lags(2)
xtunitroot fisher d.lnimc , dfuller lags(2)
xtunitroot fisher lntrtout , dfuller lags(2)
xtunitroot fisher d.lntrtout , dfuller lags(2)
xtunitroot fisher lngdp, pperron lags(2)
xtunitroot fisher d.lngdp, pperron lags(2)
xtunitroot fisher lnfdi , pperron lags(2)
xtunitroot fisher d.lnfdi , pperron lags(2)
xtunitroot fisher lntrade , pperron lags(2)
xtunitroot fisher d.lntrade , pperron lags(2)
xtunitroot fisher lnins , pperron lags(2)
xtunitroot fisher d.lnins , pperron lags(2)
xtunitroot fisher lnhc , pperron lags(2)
xtunitroot fisher d.lnhc , pperron lags(2)
xtunitroot fisher lngovex , pperron lags(2)
xtunitroot fisher d.lngovex , pperron lags(2)
xtunitroot fisher lnlf , pperron lags(2)
xtunitroot fisher d.lnlf , pperron lags(2)
xtunitroot fisher lnaid , pperron lags(2)
xtunitroot fisher d.lnaid , pperron lags(2)
xtunitroot fisher lnsis , pperron lags(2)
xtunitroot fisher d.lnsis , pperron lags(2)
xtunitroot fisher lneducation , pperron lags(2)
xtunitroot fisher d.lneducation , pperron lags(2)
xtunitroot fisher lneis , pperron lags(2)
xtunitroot fisher d.lneis , pperron lags(2)
xtunitroot fisher lnenergy , pperron lags(2)
xtunitroot fisher d.lnenergy , pperron lags(2)
xtunitroot fisher lnTrsCmn , pperron lags(2)
xtunitroot fisher d.lnTrsCmn , pperron lags(2)
xtunitroot fisher lnagr , pperron lags(2)
xtunitroot fisher d.lnagr , pperron lags(2)
xtunitroot fisher lnimc , pperron lags(2)
xtunitroot fisher d.lnimc , pperron lags(2)
xtunitroot fisher lntrtout , pperron lags(2)
xtunitroot fisher d.lntrtout , pperron lags(2)


////////Panel Corrected Standart Errors regression for fixing autocorrelation and heteroscedasticity problem

//lower institutional quality"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnins if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"lowerins.doc"'

//"lower human capital"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnhc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"lowerhc.doc"'

//"lower sectoral"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnaid if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneducation if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnsis if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneis if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnenergy if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnTrsCmn if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnagr if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnimc if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lntrtout if incomelevelname=="Lower middle income" , correlation(ar1) hetonly
outreg2 using lowerpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"lowerpcse.doc"'


//"upper institutional quality"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnins if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperins.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"upperins.doc"'

//"upper human capital"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnhc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperhc.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"upperhc.doc"'

//"upper sectoral"

xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnaid if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-1)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneducation if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-2)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnsis if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-3)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneis if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-4)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnenergy if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-5)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnTrsCmn if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-6)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnagr if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-7)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnimc if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-8)
xtpcse lngdp lnfdi lntrade lnins lnhc lngovex lnlf lntrtout if incomelevelname=="Upper middle income" , correlation(ar1) hetonly
outreg2 using upperpcse.doc, stats(coef tstat) e(F chi2 chi2p) ctitle(Model-9)
shellout using `"upperpcse.doc"'



**********2SLS regression***********

***********Lower middle income**********
***********Sector-specific******************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnaid if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneducation if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnsis if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneis if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnenergy if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnTrsCmn if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnagr if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnimc if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lntrtout if incomelevelname=="Lower middle income", 2sls
outreg2 using 2sls, word ctitle(Model-9)

***************interaction between institutional quality and foreign aid************************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnins if incomelevelname=="Lower middle income", 2sls
outreg2 using 2, word ctitle(Model-9)

***************interaction between human capital and foreign aid************************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnhc if incomelevelname=="Lower middle income", 2sls
outreg2 using 1, word ctitle(Model-9)
shellout using `"1.rtf"'

***********Upper middle income***************
***********Sector-specific*****************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnaid if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneducation if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnsis if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lneis if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnenergy if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnTrsCmn if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnagr if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lnimc if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf lntrtout if incomelevelname=="Upper middle income", 2sls
outreg2 using 3, word ctitle(Model-9)

***************Upper middle income*********
***************interaction between institutional quality and foreign aid************************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnins if incomelevelname=="Upper middle income", 2sls
outreg2 using 4, word ctitle(Model-9)

*********************Upper middle income*************************
***************interaction between human capital and foreign aid***********************

reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnaid#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-1)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneducation#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-2)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnsis#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-3)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lneis#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-4)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnenergy#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-5)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnTrsCmn#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-6)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnagr#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-7)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lnimc#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-8)
reg3 lngdp lnfdi lntrade lnins lnhc lngovex lnlf c.lntrtout#c.lnhc if incomelevelname=="Upper middle income", 2sls
outreg2 using 5, word ctitle(Model-9)
