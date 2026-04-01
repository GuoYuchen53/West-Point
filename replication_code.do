*==============================================================================
* Variable Descriptions
* Paper: Comrades and Cause: Peer Influence on West Point Cadets' Civil War Allegiances
* Guo, Jackson, Jia (2026)
*==============================================================================

* --- Outcome Variables ---

* fight_for          : Side the cadet fought for: 1 = Union, 0 = Confederate, . = did not participate
* fight_for_all      : Treat missing values as not joining the union: 1 = Union, 0 = Confederate, 0 = did not participate

* --- Core Explanatory Variables: Peer Composition ---

* ratio              : Share of Free-State peers in the same graduating cohort; baseline 1% slave-share threshold (main regressions, Table 1)
* ratio_5            : Share of Free-State peers using a 5% slave-share threshold to define Free States (robustness, Table S5)
* ratio_10           : Share of Free-State peers using a 10% slave-share threshold to define Free States (robustness, Table S5)
* ratio_appointed_1  : Share of Free-State peers defined by appointment state rather than home state (robustness, Table S16)
* ratio_contain_dropouts : Share of Free-State peers including cadets who dropped out before graduation (robustness, Table S13)
* ratio_graduate_ratio   : Share of Free-State peers among graduates only (Table S13, comparison with dropout split)
* ratio_ungraduate_ratio : Share of Free-State peers among dropouts only (Table S13, comparison with graduate split)
* ratio_clear_north  : Share of peers from clearly Free States (slave share <= 0.1%) in the same cohort (Table 2 Panel B)
* ratio_clear_border : Share of peers from border/moderate slave states (0.1% < slave share <= 33%) in the same cohort (Table 2 Panel B)

* --- Mexican-American War Peer Variables ---

* ratio_Mex_1        : Share of Free-State peers in the cohort who served in the Mexican-American War (Table 3)
* ratio1_Mex_1       : Share of Slave-State peers in the cohort who served in the Mexican-American War (Table 3)
* mexico_war         : Indicator for whether the cadet himself served in the Mexican-American War (1846-1848): 1 = yes, 0 = no (Table S2)

* --- Cross-Cohort Peer Variables (Figure S3) ---

* Cohort_t1          : Share of Free-State peers in the cohort graduating one year later (t+1)
* Cohort_t2          : Share of Free-State peers in the cohort graduating two years later (t+2)
* Cohort_t3          : Share of Free-State peers in the cohort graduating three years later (t+3)
* Cohort_t_1         : Share of Free-State peers in the cohort graduating one year earlier (t-1)
* Cohort_t_2         : Share of Free-State peers in the cohort graduating two years earlier (t-2)
* Cohort_t_3         : Share of Free-State peers in the cohort graduating three years earlier (t-3)

* --- Individual Characteristics ---

* id                 ：Cadet's personal id
* Age_in_1860        : Cadet's age in 1860 (control variable, Table 1)
* Class_Rank         : Cadet's graduation rank percentile at West Point (top 10% = 100, bottom 10% = 10)
* Cohort             : Graduation year (1820-1860); used as cohort trend control and fixed effect
* state              : Numeric identifier for cadet's home state; used for state fixed effects
* born_state         : Name of cadet's birth state (string); used for geographic identification and sample selection
* born_county        : Name of cadet's birth county (string); used for county-level variable matching and missing-value filtering
* a                  : Constant indicator equal to 1 for every observation; used to compute group totals via egen

* --- Slavery Background Variables ---

* PercentageEnslaved    : Percentage of the enslaved population in cadet's home state in 1860 (main political-economic background proxy, Table 1)
* slave_share_county    : Percentage of the enslaved population in cadet's home county in 1860 (county-level interaction, Table 2 Panel A & Table S9)
* slave_ownership       : Indicator for whether the cadet personally owned slaves in 1860: 1 = yes, 0 = no (Table 2 Panel A)

* --- State-Type Grouping Indicators ---

* slave              : Indicator for cadet's home state being a Slave State (slave share > 1%, baseline threshold)
* non_slave          : Indicator for cadet's home state being a Free State (slave share <= 1%, baseline threshold)
* slave_5            : Slave State indicator under 5% threshold: 1 = Slave State (slave share >= 5%) (robustness, Table S5)
* non_slave_5        : Free State indicator under 5% threshold: 1 = Free State (slave share < 5%) (robustness, Table S5)
* slave_10           : Slave State indicator under 10% threshold: 1 = Slave State (slave share >= 10%) (robustness, Table S5)
* non_slave_10       : Free State indicator under 10% threshold: 1 = Free State (slave share < 10%) (robustness, Table S5)
* clear_zero_slave   : Indicator for states with negligible slavery (slave share <= 0.1%); clearly Free States (Table 2 Panel B grouping)
* clear_low_slave    : Indicator for moderate slave states (0.1% < slave share <= 33%); includes border states (Table 2 Panel B grouping)
* clear_high_slave   : Indicator for heavily slave-dependent states (slave share > 33%) (Table 2 Panel B grouping)

* --- Family Background Variables ---

* North_state_father : Indicator for whether the cadet's father was from a Free State: 1 = yes, 0 = no (Table 1 Column 4)
* North_state_mother : Indicator for whether the cadet's mother was from a Free State: 1 = yes, 0 = no (Table 1 Column 4)
* North_state_wife   : Indicator for whether the cadet's wife was from a Free State: 1 = yes, 0 = no; unmarried cadets coded as 0 (Table 1 Column 4)

* --- Religion Variables (Table S9) ---

* Baptistchurches        : Number of Baptist churches per 1,000 population in cadet's home county
* Methodistchurches      : Number of Methodist churches per 1,000 population in cadet's home county (classified as Evangelical / pro-slavery denomination)
* Presbyterianchurches   : Number of Presbyterian churches per 1,000 population in cadet's home county (classified as Evangelical / pro-slavery denomination)
* FriendsQuakerchurches  : Number of Quaker churches per 1,000 population in cadet's home county (classified as Evangelical / pro-slavery denomination)
* Congregationalchurches : Number of Congregational churches per 1,000 population in cadet's home county (classified as Evangelical / pro-slavery denomination)
* RomanCatholicchurches  : Number of Roman Catholic churches per 1,000 population in cadet's home county (classified as Liturgical / anti-slavery denomination)
* Lutheranchurches       : Number of Lutheran churches per 1,000 population in cadet's home county (classified as Liturgical / anti-slavery denomination)
* Episcopalchurches      : Number of Episcopal churches per 1,000 population in cadet's home county (classified as Liturgical / anti-slavery denomination)

* --- Political Voting Variables (Table S9) ---

* political_against_slave : Vote share for Lincoln (Republican) in the 1860 presidential election in cadet's home county (proxy for anti-slavery political sentiment)
* political_support_slave : Vote share for Breckinridge (Southern Democrat) in the 1860 presidential election in cadet's home county (proxy for pro-slavery political sentiment)

* --- Economic Variables (Table S8) ---

* ln_Farmland_Value              : Log of per-capita farmland value in cadet's home state (proxy for agricultural economic structure)
* ln_ValueofManufacturedProducts : Log of per-capita value of manufactured products in cadet's home state (proxy for industrial economic structure)
* Manufactures_numberemployed    : Share of employment in manufacturing in cadet's home state (standardized before use in regressions, Table S8)

* --- Cash Crop Variable (Table S15) ---

* cashcrop : Indicator for whether the cadet was ever employed in a cash-crop-related occupation: 1 = yes (e.g., planter or engaged in cotton, tobacco, sugar, indigo, or rice production/trade); follows White (2024)

* --- Military Service Continuity Variable (Table S10) ---

* returned_to_civilian_life_before : Indicator for whether the cadet left regular military service for more than one year before the Civil War: 1 = returned to civilian life (non-continuous service), 0 = continuous service

* --- Post-War Career Outcome Variables (Tables S17, S18) ---

* Rank3    : Cadet's military rank in 1865, coded on an 11-point scale (3rd Lieutenant = 1, Major General and above = 11); measures post-war military promotion
* General3 : Indicator for whether the cadet attained the rank of General by 1865: 1 = yes, 0 = no (Table S17)
* Died     : Indicator for whether the cadet was killed in action during the Civil War: 1 = killed, 0 = survived (Table S17)

*==============================================================================
* Note: The following variables are generated at runtime via gen commands and
* do NOT exist in the raw dataset:
*   - join_union, join_Confederate, quit_war   (derived from fight_for)
*   - Evangelical_churches                     (sum of Baptist + Methodist + Presbyterian)
*   - Liturgical_churches                      (sum of RomanCatholic + Lutheran + Episcopal)
*   - fight_for_all_mlogit                     (recoded from fight_for for mlogit)
*   - war_participant                          (derived from fight_for)
*   - Cohort5                                  (five-year interval FE, derived from Cohort)
*   - hometown                                 (derived from clear_*_slave indicators)
*   - z_* (standardized variables)            (generated and dropped within regression loops)
*==============================================================================
cd "C:\Users\5656hcx\Dropbox\西点军校\Replication files"
use "replication data.dta", clear
  

global ctr3 "Age_in_1860 Class_Rank Cohort"

*==============================================================================
* PRE-STANDARDIZATION BLOCK
*
* All z_ variables are generated here in a unified way.
* Naming convention: z_{original_variable}_{sample_identifier}.
*==============================================================================

*--------------------------------------------------------------
* Helper program: within-sample standardization
* zscore_within varlist, suf(suffix) cond("sample condition")
*--------------------------------------------------------------
capture program drop zscore_within
program define zscore_within
    syntax varlist, suf(string) cond(string)
    quietly {
        foreach var of varlist `varlist' {
            egen _m = mean(`var') if `cond'
            egen _s = sd(`var')   if `cond'
            gen z_`var'_`suf' = (`var' - _m) / _s
            drop _m _s
        }
    }
    foreach var of varlist `varlist' {
        sum z_`var'_`suf'
    }
end

*--------------------------------------------------------------
* Derived variables (previously scattered across sections; generated here in a unified block)
*--------------------------------------------------------------
* x1 flags cadets whose home county is missing.
gen x1 = (born_state!="" & born_county=="")
gen x2 = ((born_state!="" & born_county=="") | PercentageEnslaved>33)
gen clear_zero_slave = (PercentageEnslaved<=0.1)
gen clear_low_slave  = (PercentageEnslaved>0.1 & PercentageEnslaved<=33)
gen clear_high_slave = (PercentageEnslaved>33)
gen Evangelical_churches = Congregationalchurches + FriendsQuakerchurches + Methodistchurches + Presbyterianchurches
gen Liturgical_churches  = RomanCatholicchurches + Lutheranchurches + Episcopalchurches

gen non_slave_5=.
replace non_slave_5=(PercentageEnslaved<5)
gen slave_5=.
replace slave_5=(PercentageEnslaved>=5&PercentageEnslaved!=.)

gen non_slave_10=.
replace non_slave_10=(PercentageEnslaved<10)
gen slave_10=.
replace slave_10=(PercentageEnslaved>=10&PercentageEnslaved!=.)
*--------------------------------------------------------------
* Table 1 Slave State
*--------------------------------------------------------------
zscore_within ratio ratio_contain_dropouts ratio_graduate_ratio ratio_ungraduate_ratio PercentageEnslaved ratio_appointed_1 Manufactures_numberemployed, suf(s1) ///
    cond("slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")


zscore_within ratio, suf(s2) ///
    cond("North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

*--------------------------------------------------------------
* Table 1 Free State 
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved ratio_appointed_1 Manufactures_numberemployed, suf(n1) ///
    cond("non_slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within ratio, suf(n2) ///
    cond("North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

*--------------------------------------------------------------
* Table 2 
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved slave_share_county Liturgical_churches Evangelical_churches, suf(s_x1) ///
    cond("x1!=1&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

* Panel B: clear_north/border
zscore_within ratio_clear_north ratio_clear_border, suf(cs_hi) ///
    cond("clear_high_slave==1&fight_for!=.&ratio_clear_north!=.&ratio_clear_border!=.&Age_in_1860!=.&Class_Rank!=.")

zscore_within ratio_clear_north ratio_clear_border, suf(cs_lo) ///
    cond("clear_low_slave==1&fight_for!=.&ratio_clear_north!=.&ratio_clear_border!=.&Age_in_1860!=.&Class_Rank!=.")

zscore_within ratio_clear_north ratio_clear_border, suf(cs_ze) ///
    cond("clear_zero_slave==1&fight_for!=.&ratio_clear_north!=.&ratio_clear_border!=.&Age_in_1860!=.&Class_Rank!=.")

*--------------------------------------------------------------
* Table 3: Mexican-American War
*--------------------------------------------------------------

zscore_within ratio PercentageEnslaved ratio_Mex_1 ratio1_Mex_1, suf(sm1) ///
    cond("slave==1&Cohort<1846&Cohort>=1820&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")


zscore_within ratio PercentageEnslaved ratio_Mex_1 ratio1_Mex_1, suf(lm1) ///
    cond("clear_low_slave==1&Cohort<1846&Cohort>=1820&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

*--------------------------------------------------------------
* Table S4
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved, suf(sb2) ///
    cond("North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")


zscore_within ratio PercentageEnslaved, suf(nb2) ///
    cond("North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

* Balance test without fight_for restriction
zscore_within ratio PercentageEnslaved, suf(sb3) ///
    cond("slave==1&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within ratio PercentageEnslaved, suf(nb3) ///
    cond("non_slave==1&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

*--------------------------------------------------------------
* Table S5: Alternative thresholds (5% and 10%)
*--------------------------------------------------------------
zscore_within ratio_5 PercentageEnslaved, suf(s5_3) ///
    cond("slave_5==1&fight_for!=.&fight_for_all!=.&ratio_5!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within ratio_5 PercentageEnslaved, suf(n5_3) ///
    cond("non_slave_5==1&fight_for!=.&fight_for_all!=.&ratio_5!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within ratio_10 PercentageEnslaved, suf(s10_3) ///
    cond("slave_10==1&fight_for!=.&fight_for_all!=.&ratio_10!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within ratio_10 PercentageEnslaved, suf(n10_3) ///
    cond("non_slave_10==1&fight_for!=.&fight_for_all!=.&ratio_10!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

*--------------------------------------------------------------
* Table S9: Religion & Voting (x1 and x2 samples)
*--------------------------------------------------------------
zscore_within ratio slave_share_county ///
    political_against_slave political_support_slave, suf(sx1) ///
    cond("x1!=1&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&political_against_slave!=.")

	
zscore_within ratio slave_share_county Evangelical_churches Liturgical_churches ///
    political_against_slave political_support_slave, suf(sx2) ///
    cond("x2!=1&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

	
zscore_within ratio slave_share_county ///
    political_against_slave political_support_slave, suf(sx3) ///
    cond("x2!=1&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&political_support_slave!=.")
	
*--------------------------------------------------------------
* Table S10: Military service continuity
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved, ///
    suf(scc1) ///
    cond("returned_to_civilian_life_before==1&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

zscore_within ratio PercentageEnslaved, ///
    suf(scc2) ///
    cond("returned_to_civilian_life_before==0&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

*--------------------------------------------------------------
* Table S11: Peer Influence pre and post 1850
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved, ///
    suf(scc3) ///
    cond("Cohort<1850&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")

zscore_within ratio PercentageEnslaved, ///
    suf(scc4) ///
    cond("Cohort>=1850&slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")
	
	
*--------------------------------------------------------------
* Table S14: Multinomial Logit Results
*--------------------------------------------------------------
zscore_within ratio PercentageEnslaved, ///
    suf(scc5) ///
    cond("slave==1&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.")


*--------------------------------------------------------------
* Table S18: Post-war outcomes (Confederate / Union)
*--------------------------------------------------------------
zscore_within PercentageEnslaved, suf(conf) ///
    cond("fight_for==0&Rank3!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

zscore_within PercentageEnslaved, suf(unio) ///
    cond("fight_for==1&Rank3!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

*--------------------------------------------------------------
*--------------------------------------------------------------

*==============================================================================
* END OF PRE-STANDARDIZATION BLOCK
*==============================================================================



**********************************************************************************************************************
*******************Figure 1:Home-state slave share and the probability of joining the Union***************************
**********************************************************************************************************************
*A:Probability of joining the Union: war participants 
gen join_union=(fight_for==1)
gen join_Confederate=(fight_for==0)
gen quit_war=(fight_for==.)

preserve
bys state: egen total_quit_war=total(quit_war)
bys state: egen total_join_union=total(join_union)
bys state: egen total_people=total(a)
gen probability_join_union=total_join_union/(total_people-total_quit_war)
duplicates drop state, force
twoway (lfit probability_join_union PercentageEnslaved) (scatter probability_join_union PercentageEnslaved [w=total_people], msymbol(circle_hollow)), ytitle("Probability joining Union") legend(off)
restore

*B:Probability of joining the Union: all cadets
preserve
bys state: egen total_join_union=total(join_union)
bys state: egen total_people=total(a)
gen probability_join_union=total_join_union/(total_people)
duplicates drop state, force
twoway (lfit probability_join_union PercentageEnslaved) (scatter probability_join_union PercentageEnslaved [w=total_people], msymbol(circle_hollow)), ytitle("Probability joining Union") legend(off)
restore
**********************************************************************************************************************
**********************************************************************************************************************
**********************************************************************************************************************


**********************************************************************************************************************
********************Figure 2:Low-slave state peers and allegiances****************************************************
**********************************************************************************************************************
*A:Free-State peers and allegiances for two groups of cadets
binscatter fight_for_all ratio if fight_for!=., by(non_slave)

*B:Peer composition over time
preserve
keep Cohort Cohort ratio non_slave slave fight_for
keep if slave==1&fight_for!=.
duplicates drop Cohort, force
twoway ///
  (line ratio Cohort, ///
  lcolor(blue) lpattern(dash) legend(label(1 "ratio")) ytitle("Share Free-States peers", axis(1)) ///
  )
restore


**********************************************************************************************************************
********************Table 1: Peer composition and allegiance choice***************************************************
**********************************************************************************************************************

est clear

reg fight_for_all z_ratio_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)


reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)


areg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_s2 slave_ownership North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)



reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank Cohort if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

areg fight_for_all z_ratio_n2 North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b8
sum fight_for_all if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 0 1 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice) replace 


**********************************************************************************************************************
********************Table 2: Peer composition and allegiance choice: Different groups of states**********************
**********************************************************************************************************************
*panel A
est clear


areg fight_for_all z_ratio_s1 c.z_PercentageEnslaved_s1#c.z_ratio_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_s_x1 c.z_slave_share_county_s_x1#c.z_ratio_s_x1 z_slave_share_county_s_x1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if x1!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_s1 c.slave_ownership#c.z_ratio_s1 slave_ownership Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("State Level" "County Level" "Individual Level",pattern(1 1 1) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Different groups of states) replace 


*panel B

est clear

areg fight_for_all z_ratio_clear_north_cs_hi z_ratio_clear_border_cs_hi Age_in_1860 Class_Rank Cohort if clear_high_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if clear_high_slave==1&fight_for!=.&(fight_for!=.&ratio_clear_north!=.& ratio_clear_border!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_clear_north_cs_lo z_ratio_clear_border_cs_lo Age_in_1860 Class_Rank Cohort if clear_low_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if clear_low_slave==1&fight_for!=.&(ratio_clear_north!=.& ratio_clear_border!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_clear_north_cs_ze z_ratio_clear_border_cs_ze Age_in_1860 Class_Rank Cohort if clear_zero_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if clear_zero_slave==1&fight_for!=.&(fight_for!=.&ratio_clear_north!=.& ratio_clear_border!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups(">33%" "1%-33%" "0-1%",pattern(1 1 1) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Different groups of states) replace 

**********************************************************************************************************************
********************Table 3: Peer composition and allegiance choice: Mexican-American War**********************
**********************************************************************************************************************

*>1%
est clear
reg fight_for_all c.z_ratio_Mex_1_sm1#c.z_ratio_sm1 c.z_ratio1_Mex_1_sm1#c.z_ratio_sm1 z_ratio1_Mex_1_sm1 z_ratio_Mex_1_sm1 z_ratio_sm1 if slave==1&Cohort<1846&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all c.z_ratio_Mex_1_sm1#c.z_ratio_sm1 c.z_ratio1_Mex_1_sm1#c.z_ratio_sm1 z_ratio1_Mex_1_sm1 z_ratio_Mex_1_sm1 z_ratio_sm1 Age_in_1860 Class_Rank z_PercentageEnslaved_sm1 Cohort if slave==1&Cohort<1846&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all c.z_ratio_Mex_1_sm1#c.z_ratio_sm1 c.z_ratio1_Mex_1_sm1#c.z_ratio_sm1 z_ratio1_Mex_1_sm1 z_ratio_Mex_1_sm1 z_ratio_sm1 Age_in_1860 Class_Rank Cohort if slave==1&Cohort<1846&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)
 

*1%-33%

reg fight_for_all c.z_ratio_Mex_1_lm1#c.z_ratio_lm1 c.z_ratio1_Mex_1_lm1#c.z_ratio_lm1 z_ratio1_Mex_1_lm1 z_ratio_Mex_1_lm1 z_ratio_lm1 if clear_low_slave==1&Cohort<1846&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if clear_low_slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all c.z_ratio_Mex_1_lm1#c.z_ratio_lm1 c.z_ratio1_Mex_1_lm1#c.z_ratio_lm1 z_ratio1_Mex_1_lm1 z_ratio_Mex_1_lm1 z_ratio_lm1 Age_in_1860 Class_Rank z_PercentageEnslaved_lm1 Cohort if clear_low_slave==1&Cohort<1846&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if clear_low_slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all c.z_ratio_Mex_1_lm1#c.z_ratio_lm1 c.z_ratio1_Mex_1_lm1#c.z_ratio_lm1 z_ratio1_Mex_1_lm1 z_ratio_Mex_1_lm1 z_ratio_lm1 Age_in_1860 Class_Rank Cohort if clear_low_slave==1&Cohort<1846&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if clear_low_slave==1&Cohort<1846&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Slave-State Cadets (1%-33%)",pattern(1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Mexican-American War) replace 


**********************************************************************************************************************
********************Table S2: Summary statistics *********************************************************************
**********************************************************************************************************************
gen war_participant=0
replace war_participant=1 if fight_for!=.

replace slave_share_county=. if born_state!=""& born_county==""
replace North_state_wife=. if fight_for==.
replace slave_ownership=. if fight_for==.
*three panel
asdoc sum fight_for fight_for_all war_participant Class_Rank  Age_in_1860  PercentageEnslaved  Cohort mexico_war  slave_ownership slave_share_county  North_state_father North_state_mother North_state_wife if PercentageEnslaved>33, save(summary1.rtf) replace

asdoc sum fight_for fight_for_all war_participant Class_Rank  Age_in_1860  PercentageEnslaved  Cohort mexico_war slave_ownership slave_share_county  North_state_father North_state_mother North_state_wife if PercentageEnslaved>0.01&PercentageEnslaved<=33, save(summary2.rtf) replace

asdoc sum fight_for fight_for_all war_participant Class_Rank  Age_in_1860  PercentageEnslaved  Cohort mexico_war slave_ownership  slave_share_county  North_state_father North_state_mother North_state_wife if PercentageEnslaved<=0.01, save(summary3.rtf) replace


**********************************************************************************************************************
********************Table S3: Summary statistics  cohort*********************************************************************
**********************************************************************************************************************


preserve
*—— 1) 
gen byte hometown = .
replace hometown = 0 if clear_zero_slave==1
replace hometown = 1 if clear_low_slave==1
replace hometown = 2 if clear_high_slave==1
label define home_lbl 0 "Zero slave" 1 "Low slave" 2 "High slave"
label values hometown home_lbl

*—— 2) 
gen byte one = 1
collapse (sum) count_hometown = one, by(Cohort hometown)   // Cohort×hometown

* Cohort×hometown 
fillin Cohort hometown
replace count_hometown = 0 if _fillin==1
drop _fillin

*—— 3) 
bys Cohort: egen total_Cohort = total(count_hometown)
gen prop_hometown = cond(total_Cohort>0, count_hometown/total_Cohort, .)

order Cohort hometown count_hometown total_Cohort prop_hometown
sort Cohort hometown


asdoc sum count_hometown prop_hometown if hometown == 0, save(summary4.rtf) replace
asdoc sum count_hometown prop_hometown if hometown == 1, save(summary5.rtf) replace
asdoc sum count_hometown prop_hometown if hometown == 2, save(summary6.rtf) replace

restore


**********************************************************************************************************************
*******************Figure S2: Slave share and cadet’s choices*********************************************************
**********************************************************************************************************************
*A:Probability of joining the Union: all cadets
preserve
bys state: egen total_join_union=total(join_union)
bys state: egen total_people=total(a)
gen probability_join_union=total_join_union/(total_people)
duplicates drop state, force
twoway (lfit probability_join_union PercentageEnslaved) (scatter probability_join_union PercentageEnslaved [w=total_people], msymbol(circle_hollow)), ytitle("Probability joining Union") legend(off)
restore

*B:Probability of joining the Confederacy: all cadets
preserve
bys state: egen total_join_Confederate=total(join_Confederate)
bys state: egen total_people=total(a)
gen probability_join_Confederate=total_join_Confederate/(total_people)
duplicates drop state, force
twoway (lfit probability_join_Confederate PercentageEnslaved) (scatter probability_join_Confederate PercentageEnslaved [w=total_people], msymbol(circle_hollow)), ytitle("Probability joining Confederacy") legend(off)
restore

*C: Probability of being neutral: all cadets
preserve
bys state: egen total_quit_war=total(quit_war)
bys state: egen total_people=total(a)
gen probability_quit_war=total_quit_war/(total_people)
duplicates drop state, force
twoway (lfit probability_quit_war PercentageEnslaved) (scatter probability_quit_war PercentageEnslaved [w=total_people], msymbol(circle_hollow)), ytitle("Probability being neutral") legend(off)
restore




**********************************************************************************************************************
********************Table S4: Correlations between peers and personal characteristics**********************************
**********************************************************************************************************************

*Validation
**from 1820-1860**
est clear

reg z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b0
test Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort

reg z_ratio_sb2 Age_in_1860 Class_Rank z_PercentageEnslaved_sb2 Cohort North_state_father North_state_mother North_state_wife if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
test Age_in_1860 Class_Rank z_PercentageEnslaved_sb2 Cohort North_state_father North_state_mother North_state_wife


reg z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
test Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort

reg z_ratio_nb2 Age_in_1860 Class_Rank z_PercentageEnslaved_nb2 Cohort North_state_father North_state_mother North_state_wife if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b3
test Age_in_1860 Class_Rank z_PercentageEnslaved_nb2 Cohort North_state_father North_state_mother North_state_wife


reg z_ratio_sb3 Age_in_1860 Class_Rank z_PercentageEnslaved_sb3 Cohort if slave==1, vce(bootstrap,rep(400) seed(10101))
est store b4
test Age_in_1860 Class_Rank z_PercentageEnslaved_sb3 Cohort

reg z_ratio_sb2 Age_in_1860 Class_Rank z_PercentageEnslaved_sb2 Cohort North_state_father North_state_mother North_state_wife if North_state_father!=.&North_state_mother!=.&slave==1, vce(bootstrap,rep(400) seed(10101))
est store b5
test Age_in_1860 Class_Rank z_PercentageEnslaved_sb2 Cohort North_state_father North_state_mother North_state_wife

reg z_ratio_nb3 Age_in_1860 Class_Rank z_PercentageEnslaved_nb3 Cohort if non_slave==1, vce(bootstrap,rep(400) seed(10101))
est store b6
test Age_in_1860 Class_Rank z_PercentageEnslaved_nb3 Cohort

reg z_ratio_nb2 Age_in_1860 Class_Rank z_PercentageEnslaved_nb2 Cohort North_state_father North_state_mother North_state_wife if non_slave==1, vce(bootstrap,rep(400) seed(10101))
est store b7
test Age_in_1860 Class_Rank z_PercentageEnslaved_nb2 Cohort North_state_father North_state_mother North_state_wife


esttab b* using baseline.tex, label /// 
mgroups("War Participants " "All",pattern(1 0 0 0  1 0 0 0 ) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Correlations between peers and personal characteristics) replace 


**********************************************************************************************************************
********************Table S5: Peer composition and allegiance choice: Different thresholds****************************
**********************************************************************************************************************

est clear

reg fight_for_all z_ratio_5_s5_3 Age_in_1860 Class_Rank z_PercentageEnslaved_s5_3 Cohort if slave_5==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave_5==1&fight_for!=.&(fight_for_all!=.&ratio_5!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_5_s5_3 Age_in_1860 Class_Rank Cohort if slave_5==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave_5==1&fight_for!=.&(fight_for_all!=.&ratio_5!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_5_n5_3 Age_in_1860 Class_Rank z_PercentageEnslaved_n5_3 Cohort if non_slave_5==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if non_slave_5==1&fight_for!=.&(fight_for_all!=.&ratio_5!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_5_n5_3 Age_in_1860 Class_Rank Cohort if non_slave_5==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if non_slave_5==1&fight_for!=.&(fight_for_all!=.&ratio_5!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_10_s10_3 Age_in_1860 Class_Rank z_PercentageEnslaved_s10_3 Cohort if slave_10==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if slave_10==1&fight_for!=.&(fight_for_all!=.&ratio_10!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_10_s10_3 Age_in_1860 Class_Rank Cohort if slave_10==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if slave_10==1&fight_for!=.&(fight_for_all!=.&ratio_10!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_10_n10_3 Age_in_1860 Class_Rank z_PercentageEnslaved_n10_3 Cohort if non_slave_10==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if non_slave_10==1&fight_for!=.&(fight_for_all!=.&ratio_10!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_10_n10_3 Age_in_1860 Class_Rank Cohort if non_slave_10==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b8
sum fight_for_all if non_slave_10==1&fight_for!=.&(fight_for_all!=.&ratio_10!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("thresholds: 5%" "thresholds: 10%",pattern(1 0 0 0 1 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Different thresholds) replace 


**********************************************************************************************************************
********************Table S6: Cohort-Clustered and Bootstrap Cohort-Clustered SE**********************************************************
**********************************************************************************************************************
*A. Cohort level bootstrap
est clear

bootstrap, reps(400) seed(10101) cluster(Cohort): reg fight_for_all z_ratio_s1 if slave==1&fight_for!=.
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=.
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): areg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state)
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): areg fight_for_all z_ratio_s2 slave_ownership North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=., a(state)
est store b4
sum fight_for_all if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)



bootstrap, reps(400) seed(10101) cluster(Cohort): reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=.
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=.
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): areg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank Cohort if non_slave==1&fight_for!=., a(state)
est store b7
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

bootstrap, reps(400) seed(10101) cluster(Cohort): areg fight_for_all z_ratio_n2 North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=., a(state)
est store b8
sum fight_for_all if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Cohort-Clustered and Bootstrap Cohort-Clustered SE) replace 

*B. Cohort level cluster

est clear

reg fight_for_all z_ratio_s1 if slave==1&fight_for!=., vce(cluster Cohort)
est store b1
predict ehat1, resid
mixed ehat1 || Cohort:
estat icc
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(cluster Cohort)
est store b2
predict ehat2, resid
mixed ehat2 || Cohort:
estat icc
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(cluster Cohort)
est store b3
predict ehat3, resid
mixed ehat3 || Cohort:
estat icc
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

areg fight_for_all z_ratio_s2 slave_ownership North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=., a(state) vce(cluster Cohort)
est store b4
predict ehat4, resid
mixed ehat4 || Cohort:
estat icc
sum fight_for_all if North_state_father!=.&North_state_mother!=.&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)



reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=., vce(cluster Cohort)
est store b5
predict ehat5, resid
mixed ehat5 || Cohort:
estat icc
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(cluster Cohort)
est store b6
predict ehat6, resid
mixed ehat6 || Cohort:
estat icc
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank Cohort if non_slave==1&fight_for!=., a(state) vce(cluster Cohort)
est store b7
predict ehat7, resid
mixed ehat7 || Cohort:
estat icc
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

areg fight_for_all z_ratio_n2 North_state_father North_state_mother North_state_wife Age_in_1860 Class_Rank Cohort if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=., a(state) vce(cluster Cohort)
est store b8
predict ehat8, resid
mixed ehat8 || Cohort:
estat icc
sum fight_for_all if North_state_father!=.&North_state_mother!=.&non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Cohort-Clustered and Bootstrap Cohort-Clustered SE) replace 


**********************************************************************************************************************
********************Table S7: Peer composition and allegiance choice: Variations in age groups**********************************************************
**********************************************************************************************************************
*A. 𝐴𝑔𝑒 < 60
preserve
drop if Age_in_1860>=60

drop z_ratio_s1 z_PercentageEnslaved_s1 z_ratio_n1 z_PercentageEnslaved_n1

zscore_within ratio PercentageEnslaved, suf(s1) ///
    cond("slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")
zscore_within ratio PercentageEnslaved, suf(n1) ///
    cond("non_slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

est clear

reg fight_for_all z_ratio_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_s1 Age_in_1860  Class_Rank  z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_s1 Age_in_1860  Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860  Class_Rank  z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860  Class_Rank Cohort if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Variations in age groups) replace 
restore

*B. 𝐴𝑔𝑒 < 50
preserve
drop if Age_in_1860>=50

drop z_ratio_s1 z_PercentageEnslaved_s1 z_ratio_n1 z_PercentageEnslaved_n1

zscore_within ratio PercentageEnslaved, suf(s1) ///
    cond("slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")
zscore_within ratio PercentageEnslaved, suf(n1) ///
    cond("non_slave==1&fight_for!=.&fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.")

est clear
reg fight_for_all z_ratio_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_s1 Age_in_1860  Class_Rank  z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_s1 Age_in_1860  Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860  Class_Rank  z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860  Class_Rank Cohort if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Variations in age groups) replace 
restore


**********************************************************************************************************************
********************Table S8: Home state economic proxies and war allegiance**********************************************************
**********************************************************************************************************************


est clear

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)


reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort ln_Farmland_Value if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort ln_Farmland_Value ln_ValueofManufacturedProducts  if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort ln_Farmland_Value ln_ValueofManufacturedProducts z_Manufactures_numberemployed_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort ln_Farmland_Value if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort ln_Farmland_Value ln_ValueofManufacturedProducts  if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort ln_Farmland_Value ln_ValueofManufacturedProducts z_Manufactures_numberemployed_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b8
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 0 1 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Home state economic proxies and war allegiance) replace 




**********************************************************************************************************************
********************Table S9: Considering Religion and Voting****************************************************************
**********************************************************************************************************************

*vote

est clear
areg fight_for_all  c.z_slave_share_county_s_x1#c.z_ratio_s_x1  z_slave_share_county_s_x1 z_ratio_s_x1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if x1!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


*Evangelical church
areg fight_for_all  c.z_slave_share_county_s_x1#c.z_ratio_s_x1  z_slave_share_county_s_x1 z_ratio_s_x1 c.z_Evangelical_churches_s_x1#c.z_ratio_s_x1  z_Evangelical_churches_s_x1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if x1!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

*Liturgical church
areg fight_for_all  c.z_slave_share_county_s_x1#c.z_ratio_s_x1  z_slave_share_county_s_x1 z_ratio_s_x1 c.z_Liturgical_churches_s_x1#c.z_ratio_s_x1  z_Liturgical_churches_s_x1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if x1!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all  c.z_slave_share_county_sx1#c.z_ratio_sx1  z_slave_share_county_sx1 z_ratio_sx1 c.z_political_against_slave_sx1#c.z_ratio_sx1  z_political_against_slave_sx1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if x1!=1&slave==1&fight_for!=.&political_against_slave!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all c.z_slave_share_county_sx1#c.z_ratio_sx1  z_slave_share_county_sx1 z_ratio_sx1 c.z_political_support_slave_sx1#c.z_ratio_sx1  z_political_support_slave_sx1 Age_in_1860 Class_Rank Cohort if x1!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if x1!=1&slave==1&fight_for!=.&political_support_slave!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)




areg fight_for_all  c.z_slave_share_county_sx2#c.z_ratio_sx2  z_slave_share_county_sx2 z_ratio_sx2 Age_in_1860 Class_Rank Cohort if x2!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if x2!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

*Evangelical church
areg fight_for_all  c.z_slave_share_county_sx2#c.z_ratio_sx2  z_slave_share_county_sx2 z_ratio_sx2 c.z_Evangelical_churches_sx2#c.z_ratio_sx2  z_Evangelical_churches_sx2 Age_in_1860 Class_Rank Cohort if x2!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if x2!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

*Liturgical church
areg fight_for_all  c.z_slave_share_county_sx2#c.z_ratio_sx2  z_slave_share_county_sx2 z_ratio_sx2 c.z_Liturgical_churches_sx2#c.z_ratio_sx2  z_Liturgical_churches_sx2 Age_in_1860 Class_Rank Cohort if x2!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b8
sum fight_for_all if x2!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all  c.z_slave_share_county_sx3#c.z_ratio_sx3  z_slave_share_county_sx3 z_ratio_sx3 c.z_political_against_slave_sx3#c.z_ratio_sx3  z_political_against_slave_sx3 Age_in_1860 Class_Rank Cohort if x2!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b9
sum fight_for_all if x2!=1&slave==1&fight_for!=.&political_against_slave!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all c.z_slave_share_county_sx3#c.z_ratio_sx3  z_slave_share_county_sx3 z_ratio_sx3 c.z_political_support_slave_sx3#c.z_ratio_sx3  z_political_support_slave_sx3 Age_in_1860 Class_Rank Cohort if x2!=1&slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b10
sum fight_for_all if x2!=1&slave==1&fight_for!=.&political_support_slave!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Border States",pattern(1 0 0 0 0 1 0 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Considering Religion and Voting) replace 


**********************************************************************************************************************
********************Figure S3: Peer influence by cohort***************************************************************
**********************************************************************************************************************

est clear
local vars ratio Cohort_t1 Cohort_t2 Cohort_t3 Cohort_t_1 Cohort_t_2 Cohort_t_3
foreach var of local vars {
  egen mean_`var' = mean(`var') if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)
  egen sd_`var' = sd(`var') if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)
  gen z_`var' = (`var' - mean_`var') / sd_`var'
  drop mean_`var' sd_`var'
	sum z_`var'
}
areg fight_for_all z_Cohort_t_3 z_Cohort_t_2 z_Cohort_t_1 z_ratio z_Cohort_t1 z_Cohort_t2 z_Cohort_t3 $ctr3 if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store model2
drop z_ratio z_Cohort_t_3 z_Cohort_t_2 z_Cohort_t_1 z_ratio z_Cohort_t1 z_Cohort_t2 z_Cohort_t3
coefplot model2, ///
keep(z_Cohort_t_3 z_Cohort_t_2 z_Cohort_t_1 z_ratio z_Cohort_t1 z_Cohort_t2 z_Cohort_t3) ///
 ci(90) horizontal  ///
  msymbol(O) msize(small) mcolor(black) ///
  ciopts(recast(rcap) lwidth(midthin) lpattern(solid) lcolor(black)) ///
 xline(0, lcolor(red) lpattern(dash))

**********************************************************************************************************************
********************Table S10: Peer Influence and Continuous Military Service Experience***************************************************************
**********************************************************************************************************************
 
 
*Back to citizen

est clear
reg fight_for_all z_ratio_scc1  if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if returned_to_civilian_life_before==1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_scc1 Age_in_1860 Class_Rank z_PercentageEnslaved_scc1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if returned_to_civilian_life_before==1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_scc1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if returned_to_civilian_life_before==1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)



*No back citizen
reg fight_for_all z_ratio_scc2 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if returned_to_civilian_life_before!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_scc2 Age_in_1860 Class_Rank z_PercentageEnslaved_scc2 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if returned_to_civilian_life_before!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


areg fight_for_all z_ratio_scc2 Age_in_1860 Class_Rank Cohort  if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if returned_to_civilian_life_before!=1&slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b*, b(%9.3f) se(%9.3f) star(* 0.10 ** 0.05 *** 0.01) t scalars(N r2) nogap ,using fwhr1.rtf,replace
esttab b* using baseline.tex, label /// 
mgroups("Non-continuous Military Service" "Continuous Military Service",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer Influence and Continuous Military Service Experience) replace  


**********************************************************************************************************************
********************Table S11: Peer composition and allegiance choice before and after 1850****************************
**********************************************************************************************************************

est clear

reg fight_for_all z_ratio_scc3 Age_in_1860 Class_Rank z_PercentageEnslaved_scc3 Cohort if slave==1&Cohort<1850&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if slave==1&fight_for!=.&Cohort<1850&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_scc3 Age_in_1860 Class_Rank Cohort if slave==1&Cohort<1850&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if slave==1&Cohort<1850&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


reg fight_for_all z_ratio_scc4 Age_in_1860 Class_Rank z_PercentageEnslaved_scc4 Cohort if slave==1&fight_for!=.&Cohort>=1850, vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if slave==1&fight_for!=.&Cohort>=1850&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_scc4 Age_in_1860 Class_Rank Cohort if slave==1&Cohort>=1850&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if slave==1&Cohort>=1850&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("1820-1849" "1850-1860",pattern(1 0 1 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice before and after 1850) replace 


**********************************************************************************************************************
******************************Table S11: Controlling for Five-Year Fixed Effects********************************
**********************************************************************************************************************

gen Cohort5 = floor((Cohort - 1820) / 5)  
label var Cohort5 "Cohort groups (5-year intervals)"

est clear
reg fight_for_all z_ratio_s1 i.Cohort5 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort i.Cohort5 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank Cohort i.Cohort5 if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_n1 i.Cohort5 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort i.Cohort5 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank Cohort i.Cohort5 if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Controlling for Five-Year Fixed Effects) replace


**********************************************************************************************************************
********************Table S13: Considering dropout peers **************************************************************
**********************************************************************************************************************


est clear

reg fight_for_all z_ratio_contain_dropouts_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio_contain_dropouts!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_contain_dropouts_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio_contain_dropouts!=.&Age_in_1860!=.&Class_Rank!=.)


reg fight_for_all z_ratio_graduate_ratio_s1 z_ratio_ungraduate_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_graduate_ratio_s1 z_ratio_ungraduate_ratio_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860!=.&Class_Rank!=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States",pattern(1 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Considering dropout peers) replace 


**********************************************************************************************************************
********************Table S14: Peer influence and allegiance choice: mlogit results************************************
**********************************************************************************************************************

gen fight_for_all_mlogit=.
replace fight_for_all_mlogit=0 if slave==1&fight_for==1
replace fight_for_all_mlogit=1 if slave==1&fight_for==0
replace fight_for_all_mlogit=2 if slave==1&fight_for==.

est clear
mlogit fight_for_all_mlogit z_ratio_scc5 if slave==1, base(1) vce(bootstrap,rep(400) seed(10101))
est store b0
sum fight_for_all_mlogit if slave==1&(fight_for_all!=.&ratio!=.)


mlogit fight_for_all_mlogit z_ratio_scc5 Age_in_1860 Class_Rank z_PercentageEnslaved_scc5 Cohort if slave==1,base(1) vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all_mlogit if slave==1&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

mlogit fight_for_all_mlogit z_ratio_scc5 Age_in_1860 Class_Rank Cohort i.state if slave==1, base(1) vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all_mlogit if slave==1&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Join the Confederacy",pattern(1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer influence and allegiance choice: mlogit results) replace 


**********************************************************************************************************************
********************Table S15: Peer composition and allegiance choice: Cash crops***************************************************
**********************************************************************************************************************

est clear
reg fight_for_all z_ratio_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort cashcrop if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_s1 Age_in_1860 Class_Rank Cohort cashcrop if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

areg fight_for_all c.cashcrop#c.z_ratio_s1 z_ratio_s1 Age_in_1860 Class_Rank Cohort cashcrop if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)



reg fight_for_all z_ratio_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.)

reg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort cashcrop if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_n1 Age_in_1860 Class_Rank Cohort cashcrop if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b7
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)

areg fight_for_all c.cashcrop#c.z_ratio_n1 z_ratio_n1 Age_in_1860 Class_Rank Cohort cashcrop if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b8
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio!=.&Age_in_1860 !=.&Class_Rank !=.)


esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 0 1 0 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Cash crops) replace 

**********************************************************************************************************************
********************Table S16: Considering Appointment State Peers***************************************************
**********************************************************************************************************************

est clear
reg fight_for_all z_ratio_appointed_1_s1 if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b1
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.)

reg fight_for_all z_ratio_appointed_1_s1 Age_in_1860 Class_Rank z_PercentageEnslaved_s1 Cohort if slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b2
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_appointed_1_s1 Age_in_1860 Class_Rank Cohort if slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum fight_for_all if slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.&Age_in_1860 !=.&Class_Rank !=.)

reg fight_for_all z_ratio_appointed_1_n1 if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b4
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.)

reg fight_for_all z_ratio_appointed_1_n1 Age_in_1860 Class_Rank z_PercentageEnslaved_n1 Cohort if non_slave==1&fight_for!=., vce(bootstrap,rep(400) seed(10101))
est store b5
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.&Age_in_1860 !=.&Class_Rank !=.&PercentageEnslaved!=.)

areg fight_for_all z_ratio_appointed_1_n1 Age_in_1860 Class_Rank Cohort if non_slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum fight_for_all if non_slave==1&fight_for!=.&(fight_for_all!=.&ratio_appointed_1!=.&Age_in_1860 !=.&Class_Rank !=.)

esttab b* using baseline.tex, label /// 
mgroups("Slave States" "Free States",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Peer composition and allegiance choice: Home state and appointed state) replace 


**********************************************************************************************************************
********************Table S17: Career Outcomes************************************************************
**********************************************************************************************************************

*IV=peers + state
*panel A
est clear
areg Rank3 fight_for_all $ctr3 if  slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101)) 
est store b0
sum Rank3 if  slave==1&fight_for!=.

areg General3 fight_for_all $ctr3 if  slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101)) 
est store b1
sum General3 if  slave==1&fight_for!=.

areg Died fight_for_all $ctr3 if  slave==1&fight_for!=., a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum Died if  slave==1&fight_for!=.

bootstrap, reps(400) seed(10101): ivreg2 Rank3 $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=.
est store b4
sum Rank3 if  slave==1&fight_for!=.

bootstrap, reps(400) seed(10101): ivreg2 General3 $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=. 
est store b5
sum General3 if  slave==1&fight_for!=.

bootstrap, reps(400) seed(10101): ivreg2 Died $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=.
est store b6
sum Died if  slave==1&fight_for!=.

esttab b*, b(%9.3f) se(%9.3f) star(* 0.10 ** 0.05 *** 0.01) t scalars(N r2) nogap ,using fwhr1.rtf,replace
esttab b* using baseline.tex, label /// 
mgroups("Rank" "General" "Died",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Subsequent outcomes in 1865) replace keep(fight_for_all)

*panel B
est clear
areg Rank3 fight_for_all $ctr3 if  slave==1&fight_for!=.&PercentageEnslaved<=33, a(state) vce(bootstrap,rep(400) seed(10101)) 
est store b0
sum Rank3 if  slave==1&fight_for!=.&PercentageEnslaved<=33

areg General3 fight_for_all $ctr3 if  slave==1&fight_for!=.&PercentageEnslaved<=33, a(state) vce(bootstrap,rep(400) seed(10101)) 
est store b1
sum General3 if  slave==1&fight_for!=.&PercentageEnslaved<=33

areg Died fight_for_all $ctr3 if  slave==1&fight_for!=.&PercentageEnslaved<=33, a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum Died if  slave==1&fight_for!=.&PercentageEnslaved<=33

bootstrap, reps(400) seed(10101): ivreg2 Rank3 $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=.&PercentageEnslaved<=33
est store b4
sum Rank3 if  slave==1&fight_for!=.&PercentageEnslaved<=33

bootstrap, reps(400) seed(10101): ivreg2 General3 $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=.&PercentageEnslaved<=33
est store b5
sum General3 if  slave==1&fight_for!=.&PercentageEnslaved<=33

bootstrap, reps(400) seed(10101): ivreg2 Died $ctr3 (fight_for_all = ratio i.state) if  slave==1&fight_for!=.&PercentageEnslaved<=33
est store b6
sum Died if  slave==1&fight_for!=.&PercentageEnslaved<=33

esttab b* using baseline.tex, label /// 
mgroups("Rank" "General" "Died" ,pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Subsequent outcomes in 1865) replace keep(fight_for_all)



**********************************************************************************************************************
********************Table S18: Academic rank to military rank in 1865 (The Confederate vs. The Union)******************
**********************************************************************************************************************

est clear
reg Rank3 Class_Rank  if fight_for==0, vce(bootstrap,rep(400) seed(10101))
est store b1
sum Rank3 if fight_for==0&Class_Rank !=.&Rank3!=.


reg Rank3 Age_in_1860 Class_Rank z_PercentageEnslaved_conf Cohort if fight_for==0, vce(bootstrap,rep(400) seed(10101))
est store b2
sum Rank3 if fight_for==0&Age_in_1860 !=.&Class_Rank !=.&Rank3!=.&PercentageEnslaved!=.
areg Rank3 $ctr3 if fight_for==0, a(state) vce(bootstrap,rep(400) seed(10101))
est store b3
sum Rank3 if fight_for==0&Age_in_1860 !=.&Class_Rank !=.&Rank3!=.

reg Rank3 Class_Rank  if fight_for==1, vce(bootstrap,rep(400) seed(10101))
est store b4
sum Rank3 if fight_for==1&Class_Rank !=.&Rank3!=.


reg Rank3 Age_in_1860 Class_Rank z_PercentageEnslaved_unio Cohort if fight_for==1, vce(bootstrap,rep(400) seed(10101))
est store b5
sum Rank3 if fight_for==1&Age_in_1860 !=.&Class_Rank !=.&Rank3!=.&PercentageEnslaved!=.
areg Rank3 $ctr3 if fight_for==1, a(state) vce(bootstrap,rep(400) seed(10101))
est store b6
sum Rank3 if fight_for==1&Age_in_1860 !=.&Class_Rank !=.&Rank3!=.

esttab b* using baseline.tex, label /// 
mgroups("The Confederacy" "The Union",pattern(1 0 0 1 0 0) span prefix(\multicolumn{@span}{c}{) suffix(}) erepeat(\cmidrule(lr){@span}))  ///
b(%6.3f) se(%6.3f) compress nogap stats(N r2,fmt(%12.0fc %9.3f) label("Observations" "R-squared")) star(* 0.10 ** 0.05 *** 0.01) nomtitle ///
title(Academic rank to military rank in 1865 (The Confederate vs. The Union)) replace 






