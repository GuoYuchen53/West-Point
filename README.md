# Replication Package: "Comrades and Cause and Peer Influence on West Point Cadets' Civil War Allegiances"

**Authors:** Yuchen Guo, Matthew O. Jackson, Ruixue Jia  
**Journal:** (2026)  
**GitHub Repository:** https://github.com/GuoYuchen53/WestPoint

---

## Overview

This replication package contains the data and code necessary to reproduce all tables and figures in the main text and supplemental appendix of the paper. The analysis examines how peer composition at West Point Military Academy shaped cadets' Civil War allegiances, using quasi-random variation in cohort composition from 1820 to 1860.

---

## Software Requirements

- **Stata 15.0** or later
- Required Stata packages:
  - `areg` (built-in)
  - `ivreg2` (install via: `ssc install ivreg2`)
  - `esttab` / `estout` (install via: `ssc install estout`)
  - `mlogit` (built-in)

---

## File List

| File | Description |
|------|-------------|
| `replication_data.dta` | Main dataset of 1,638 West Point cadets (1820–1860) |
| `replication_code.do` | Stata do-file that reproduces all tables and figures |
| `README.md` | This file |

---

## Data: `replication_data.dta`

The dataset covers 1,638 West Point cadets who graduated between 1820 and 1860. The primary sources are the *Biographical Register of the Officers and Graduates of the United States Military Academy* (Cullum, 1891), supplemented by genealogical databases (Ancestry.com, FamilySearch.com) and the 1860 U.S. Census. See Section 2 and Supplemental Appendix A of the paper for full details.

### Variable Descriptions

#### Outcome Variables
| Variable | Description |
|----------|-------------|
| `fight_for` | Civil War allegiance: 1 = Union, 0 = Confederate, . = did not participate |
| `fight_for_all` | Same as above but missing values recoded to 0 (not joining Union) |

#### Core Peer Composition Variables
| Variable | Description |
|----------|-------------|
| `ratio` | Share of Free-State peers in cohort (1% slave-share threshold; main results, Table 1) |
| `ratio_5` | Share of Free-State peers using 5% threshold (robustness, Table S5) |
| `ratio_10` | Share of Free-State peers using 10% threshold (robustness, Table S5) |
| `ratio_appointed_1` | Share of Free-State peers defined by appointment state (robustness, Table S16) |
| `ratio_contain_dropouts` | Share of Free-State peers including dropouts (robustness, Table S13) |
| `ratio_graduate_ratio` | Share of Free-State peers among graduates only (Table S13) |
| `ratio_ungraduate_ratio` | Share of Free-State peers among dropouts only (Table S13) |
| `ratio_clear_north` | Share of peers from clearly Free States (slave share ≤ 0.1%) (Table 2 Panel B) |
| `ratio_clear_border` | Share of peers from border/moderate slave states (0.1% < slave share ≤ 33%) (Table 2 Panel B) |

#### Mexican-American War Peer Variables
| Variable | Description |
|----------|-------------|
| `ratio_Mex_1` | Share of Free-State peers in cohort who served in Mexican-American War (Table 3) |
| `ratio1_Mex_1` | Share of Slave-State peers in cohort who served in Mexican-American War (Table 3) |
| `mexico_war` | Indicator: cadet served in Mexican-American War (1 = yes, 0 = no) |

#### Cross-Cohort Peer Variables (Figure S3)
| Variable | Description |
|----------|-------------|
| `Cohort_t1` – `Cohort_t3` | Share of Free-State peers in cohorts graduating 1–3 years later |
| `Cohort_t_1` – `Cohort_t_3` | Share of Free-State peers in cohorts graduating 1–3 years earlier |

#### Individual Characteristics
| Variable | Description |
|----------|-------------|
| `id` | Cadet's unique identifier |
| `Age_in_1860` | Age in 1860 |
| `Class_Rank` | Graduation rank percentile (top 10% = 100, bottom 10% = 10) |
| `Cohort` | Graduation year (1820–1860) |
| `state` | Numeric home state identifier (used for state fixed effects) |
| `born_state` | Home state name (string) |
| `born_county` | Home county name (string) |

#### Slavery Background Variables
| Variable | Description |
|----------|-------------|
| `PercentageEnslaved` | Slave population share in cadet's home state, 1860 (%) |
| `slave_share_county` | Slave population share in cadet's home county, 1860 (%) |
| `slave_ownership` | Indicator: cadet personally owned slaves in 1860 (1 = yes, 0 = no) |

#### State-Type Grouping Indicators
| Variable | Description |
|----------|-------------|
| `slave` / `non_slave` | Slave/Free State indicator at 1% threshold (baseline) |
| `slave_5` / `non_slave_5` | Slave/Free State indicator at 5% threshold |
| `slave_10` / `non_slave_10` | Slave/Free State indicator at 10% threshold |
| `clear_zero_slave` | Clearly Free States (slave share ≤ 1%) |
| `clear_low_slave` | Moderate slave states (1% < slave share ≤ 33%) |
| `clear_high_slave` | Heavy slave states (slave share > 33%) |

#### Family Background Variables
| Variable | Description |
|----------|-------------|
| `North_state_father` | Indicator: father from a Free State (1 = yes, 0 = no) |
| `North_state_mother` | Indicator: mother from a Free State (1 = yes, 0 = no) |
| `North_state_wife` | Indicator: wife from a Free State (1 = yes, 0 = no); unmarried cadets coded as 0 |

#### Religion Variables (Table S9)
All church variables are measured as the number of churches per 1,000 population in the cadet's home county.

| Variable | Classification |
|----------|---------------|
| `Baptistchurches` | — |
| `Methodistchurches` | Evangelical |
| `Presbyterianchurches` | Evangelical |
| `FriendsQuakerchurches` | - |
| `Congregationalchurches` | Evangelical |
| `RomanCatholicchurches` | Liturgical |
| `Lutheranchurches` | Liturgical |
| `Episcopalchurches` | Liturgical |

Note: Following Fogel (1994), Evangelical churches are broadly associated with pro-slavery constituencies and Liturgical churches with anti-slavery constituencies at the national level, though in slave states most denominations tended to support or be ambiguous on slavery regardless of category.

#### Political Voting Variables (Table S9)
| Variable | Description |
|----------|-------------|
| `political_against_slave` | Lincoln (Republican) vote share in 1860 in cadet's home county |
| `political_support_slave` | Breckinridge (Southern Democrat) vote share in 1860 in cadet's home county |

#### Economic Variables (Table S8)
| Variable | Description |
|----------|-------------|
| `ln_Farmland_Value` | Log per-capita farmland value in cadet's home state |
| `ln_ValueofManufacturedProducts` | Log per-capita manufactured product value in cadet's home state |
| `Manufactures_numberemployed` | Share of manufacturing employment in cadet's home state |

#### Other Variables
| Variable | Description |
|----------|-------------|
| `cashcrop` | Indicator: cadet had cash-crop-related employment history (Table S15; follows White 2024) |
| `returned_to_civilian_life_before` | Indicator: cadet left military service for >1 year before Civil War (Table S10) |
| `Rank3` | Military rank in 1865 on 11-point scale (3rd Lieutenant = 1, Major General+ = 11) |
| `General3` | Indicator: attained General rank by 1865 (Table S17) |
| `Died` | Indicator: killed in action during Civil War (Table S17) |

#### Variables Generated at Runtime (not in raw data)
The following variables are created within `replication_code.do` and do not exist in the raw dataset:

| Variable | Description |
|----------|-------------|
| `join_union`, `join_Confederate`, `quit_war` | Derived from `fight_for` |
| `Evangelical_churches` | Sum of Baptist + Methodist + Presbyterian church variables |
| `Liturgical_churches` | Sum of RomanCatholic + Lutheran + Episcopal church variables |
| `fight_for_all_mlogit` | Recoded from `fight_for` for multinomial logit |
| `war_participant` | Derived from `fight_for` |
| `Cohort5` | Five-year interval fixed effect bins, derived from `Cohort` |
| `hometown` | Derived from `clear_*_slave` indicators |
| `z_*` | Standardized versions of key variables, generated and dropped within regression loops |

---

## Code: `replication_code.do`

The do-file is organized sequentially to reproduce each table and figure in the paper. The structure is as follows:

| Section | Output |
|---------|--------|
| Data setup & variable construction | Generates runtime variables |
| Table 1 | Baseline peer effects on allegiance choice |
| Table 2 | Heterogeneity by slavery background |
| Table 3 | Mexican-American War and peer influence |
| Figure S2 | Slave share and cadet choices |
| Figure S3 | Peer influence by cohort |
| Table S4 | Balance: peers and personal characteristics |
| Table S5 | Alternative slave-share thresholds |
| Table S6 | Cohort-clustered standard errors |
| Table S7 | Age group robustness |
| Table S8 | Home-state economic proxies |
| Table S9 | Religion and voting |
| Table S10 | Continuous vs. non-continuous military service |
| Table S11 | Pre/post 1850 subsamples |
| Table S12 | Five-year interval fixed effects |
| Table S13 | Graduate vs. dropout peers |
| Table S14 | Multinomial logit results |
| Table S15 | Cash-crop employment |
| Table S16 | Appointment state peers |
| Table S17 | Post-war career outcomes (OLS and IV) |
| Table S18 | Academic rank and military rank in 1865 |

### How to Run

1. Install required packages if not already installed:
   ```stata
   ssc install ivreg2
   ssc install estout
   ```

2. Update the working directory path at the top of `replication_code.do` to match your local directory:
   ```stata
   cd "YOUR_LOCAL_PATH"
   ```

3. Run the full do-file:
   ```stata
   do replication_code.do
   ```

All output tables are exported as `.tex` and `.rtf` files to the working directory.

---

## Notes

- All bootstrapped standard errors use **400 resampling iterations** with **seed(10101)** for reproducibility.
- The baseline analysis defines Free vs. Slave States using a **1% slave population share** threshold; robustness checks use 5% and 10% thresholds (Table S5).
- The main analysis focuses on **war-participating cadets** (those who joined either the Union or Confederate Army). Supplemental analyses using the full cadet sample are presented in the appendix.

---

## Data Sources

- Cullum, George Washington (1891). *Biographical Register of the Officers and Graduates of the US Military Academy*.
- Patterson, Gerard A. (2002). *Rebels from West Point*. Stackpole Books.
- Maury, Herndon (1876). *Southern Historical Society Papers*. Virginia Historical Society.
- Evans, Clement A. (1899). *Confederate Military History*. Confederate Publishing Company.
- United States Census Bureau (1860). *1860 Decennial Census*, including Slave Schedules.
- Ancestry.com and FamilySearch.com (genealogical records).
- Find a Grave (2024). Cemetery records.
- Inter-university Consortium for Political and Social Research. *United States Historical Election Returns, 1824–1968*.
- Haines, Michael R., and ICPSR. *Historical, Demographic, Economic, and Social Data: The United States, 1790–2002*.

---

## Citation

If you use this replication package, please cite:

> Guo, Yuchen, Matthew O. Jackson, and Ruixue Jia. "Comrades and Cause and Peer Influence on West Point Cadets' Civil War Allegiances." 2026.
