# EXAMPLE FACTORS


f1.j <-
'[
 {"stat":"n_missing","Petal.Width":"0"},
 {"stat":"complete_rate","Petal.Width":"1"},
 {"stat":"mean","Petal.Width":"1.199333"},
 {"stat":"sd","Petal.Width":"0.7622377"},
 {"stat":"p0","Petal.Width":"0.1"},
 {"stat":"p25","Petal.Width":"0.3"},
 {"stat":"p50","Petal.Width":"1.30"},
 {"stat":"p75","Petal.Width":"1.8"},
 {"stat":"p100","Petal.Width":"2.5"},
 {"stat":"hist","Petal.Width":"?????"}
]'

t1 <- jsonlite::fromJSON( f1.j )
t1


f2.j <- 
'[ 
  { "flevel" : "1",  "flabel" : "01- Corporations originated under Act of Congress, including Federal Credit Unions" }, 
  { "flevel" : "2",  "flabel" : "02- Title holding corporation for a tax-exempt organization." }, 
  { "flevel" : "3",  "flabel" : "03- Religious, educational, charitable, scientific, and literary organizations" }, 
  { "flevel" : "4",  "flabel" : "04- Civic leagues, social welfare organizations, and local associations of employees" }, 
  { "flevel" : "5",  "flabel" : "05- Labor, agricultural, horticultural organizations. These are eduactional or instruct. grps" }, 
  { "flevel" : "6",  "flabel" : "06- Business leagues, chambers of commerce, real estate boards, etc. formed to improve conditions" }, 
  { "flevel" : "7",  "flabel" : "07- Social and recreational clubs which provide pleasure, recreation, and social activities." }, 
  { "flevel" : "8",  "flabel" : "08- Fraternal beneficiary societies and associations, with lodges providing for payment of life" }, 
  { "flevel" : "9",  "flabel" : "09- Voluntary employees beneficiary assns (including fed. employees voluntary beneficiary" }, 
  { "flevel" : "11",  "flabel" : "11- Teachers retirement fund associations." }, 
  { "flevel" : "12",  "flabel" : "12- Benevolent life insurance associations, mutual ditch or irrigation companies, mutual or coop" }, 
  { "flevel" : "13",  "flabel" : "13- Cemetery companies, providing burial and incidental activities for members." }, 
  { "flevel" : "14",  "flabel" : "14- State-chartered credit unions, mutual reserve funds, offering loans to members" }, 
  { "flevel" : "15",  "flabel" : "15- Mutual insurance cos. ar associations, providing insurance to members substantially at cost" }, 
  { "flevel" : "16",  "flabel" : "16- Cooperative organizations to finance crop operations, in conjunction with activities " }, 
  { "flevel" : "17",  "flabel" : "17- Supplemental unemployment benefit trusts, providing payments of suppl. unemployment comp" }, 
  { "flevel" : "18",  "flabel" : "18- Employee funded pension trusts, providing benefits under a pension plan funded by employees" }, 
  { "flevel" : "19",  "flabel" : "19- Post or organization of war veterans." }, 
  { "flevel" : "20",  "flabel" : "20- Trusts for prepaid group legal services, as part of a qual. group legal service plan or plans." }, 
  { "flevel" : "21",  "flabel" : "21- Black lung trusts, satisfying claims for compensation under Black Lung Acts." }, 
  { "flevel" : "22",  "flabel" : "22- Multiemployer Pension Plan" }, 
  { "flevel" : "23",  "flabel" : "23- Veterans association formed prior to 1880" }, 
  { "flevel" : "24",  "flabel" : "24-Trust described in Section 4049 of ERISA" }, 
  { "flevel" : "25",  "flabel" : "25- Title Holding Company for Pensions, etc" }, 
  { "flevel" : "26",  "flabel" : "26- State-Sponsored High Risk Health Insurance Organizations" }, 
  { "flevel" : "27",  "flabel" : "27- State-Sponsored Workers Compensation Reinsurance" }, 
  { "flevel" : "40",  "flabel" : "40- Apostolic and religious orgs. - 501(d)" }, 
  { "flevel" : "50",  "flabel" : "50- Cooperative Hospital Service Organization - 501(e)" }, 
  { "flevel" : "60",  "flabel" : "60- Cooperative Service Org. of Operating Educ. Org.- 501(f)" }, 
  { "flevel" : "70",  "flabel" : "70- Child Care Organization - 501(k)" }, 
  { "flevel" : "71",  "flabel" : "71- Charitable Risk Pool" }, 
  { "flevel" : "80",  "flabel" : "80- Farmers Cooperatives" }, 
  { "flevel" : "81",  "flabel" : "81- Qualified State-Sponsored Tuition Program" }, 
  { "flevel" : "82",  "flabel" : "82- 527 Political Organizations" }, 
  { "flevel" : "90",  "flabel" : "90- 4947(a)(2) Split Interest Trust" }, 
  { "flevel" : "91",  "flabel" : "91- 4947(a)(1) Public Charity (Files 990/990-EZ)" }, 
  { "flevel" : "92",  "flabel" : "92- 4947(a)(1) Private Foundations" }, 
  { "flevel" : "93",  "flabel" : "93- 1381(a)(2) Taxable Farmers Cooperative" }, 
  { "flevel" : "CO",  "flabel" : "CO- Unspecified 501(c) Organization Other Than 501(c)(3)"}
]'


t2 <- jsonlite::fromJSON( f2.j )
t2





prop <- 
structure(list(p1 = c("Distinct (n)", "Distinct (%)", "Missing (n)", 
"Missing (%)"), p2 = c("49156", "3.7", "934", "0.3")), class = "data.frame", row.names = c(NA, 
-4L))

quant <- 
structure(list(q1 = c("Q-05", "Q-25", "Q-50", "Q-75", "Q-95"), 
    q2 = c(0, 100, 500, 900, 1234)), class = "data.frame", row.names = c(NA, 
-5L))

stats <- 
structure(list(s1 = c("Min", "Median", "Mean", "Max", "Skew", 
"Kurtosis"), s2 = c("x", "x", "x", "x", "x", "x")), class = "data.frame", row.names = c(NA, 
-6L))


# graph
barplot(table(cut(rnorm(1000),10)),col="steelblue")

# Example values
vals <- round( rnorm(25,100000,100000), 0 )

# convert to table 
t3 <- as.data.frame( matrix( vals, nrow=5 ) )

