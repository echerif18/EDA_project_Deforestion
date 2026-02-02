# 🌲 Global Tree Cover Loss Analysis: Patterns and Drivers (2005-2024) 🌲

## Project Overview
This project explores **global tree cover loss patterns and their drivers** using the publicly available dataset from [Global Forest Watch](https://www.globalforestwatch.org/). The analysis focuses on understanding how tree cover loss has evolved across two decades (2005-2014 and 2015-2024), identifying the countries most affected, and examining the role of different drivers such as wildfires and agriculture.

## Context & Intent
This project examines global tree cover loss trends using exploratory data analysis to identify geographic patterns, temporal changes, and driver-specific impacts. The goal is to uncover data-driven insights about where and why forest loss is occurring, while acknowledging data limitations and inconsistencies.

The analysis aims to demonstrate that tree cover loss is not a uniform globally, but rather a collection of region-specific crises requiring tailored conservation strategies.

## Key Features

### Data Cleaning & Quality Assessment
- **Data Consistency and handling Missing Data**:
  - Identifying countries with incomplete year coverage (not all countries have data for all years from 2001-2024).
  - Using intersection of countries present in both decades, reducing from 158 to 154 countries for valid comparisons.
  - Addressing year gaps.
  - Ensuring consistent country naming across datasets for visualization purposes.


### Data Analysis
- **Univariate Analysis**:
  - Examining distributions of tree cover loss across countries.
  - Identifying extreme values and understanding their causes (data structure by drivers, geographic scale differences).

- **Bivariate Analysis**:
  - Comparing tree cover loss between decades (2005-2014 vs 2015-2024).
  - Analyzing relationships between countries and loss patterns over time.
  - Examining driver contributions by country and decade.

- **Geographic Analysis**:
  - Mapping proportional changes in tree cover loss between decades.
  - Identifying regional patterns (improvements vs. worsening conditions).

### Visualization
1. **How does tree cover loss compare between the two decades (2005-2014 vs 2015-2024)?**

- **Box Plot (Decades Comparison)**: Shows distribution of average tree cover loss by country for each decade on log scale.
- **Stacked Bar Chart**: Illustrates driver contributions for Russia, Brazil, Canada, US, and Indonesia across both decades.
- **Choropleth Map**: Displays proportional change between decades with green-purple gradient.

2. **What is the impact of different drivers during the last decade?**


## Main Insights

### Research Questions
1. **How does tree cover loss compare between the two decades (2005-2014 vs 2015-2024)?**
   - Finding: Most top countries showed increased loss in second decade, with Russia, Brazil, and Canada increasing by 35-51%.

2. **What is the impact of different drivers during the last decade?**
   - Finding: Drivers vary dramatically by country - wildfires dominate Russia/Canada, infrastructure dominates Brazil, agriculture dominates Indonesia.


### Geographic Concentration
- Tree cover loss is concentrated in **5 major countries**: Russia, Brazil, Canada, United States, and Indonesia.
- **Russia, Brazil, and Canada** averaged over 3 million hectares of loss in the second decade.

### Temporal Trends
- **First Decade (2005-2014)**:
  - Median < Mean (right-skewed distribution with extreme outliers).
  - High standard deviation indicates significant variability.
  - Top 4 countries exceeded 2 million hectares average loss.

- **Second Decade (2015-2024)**:
  - Distribution shifts slightly higher overall.
  - Some countries show 0.0 loss (potentially depleted dense forests under 30% threshold).
  - **Russia (+51.3%), Brazil (+36.3%), Canada (+35.9%)** showed dramatic increases.
  - **United States (-2.4%), Indonesia (-15.4%)** showed improvements.

### Driver Variability
- **Drivers are NOT universal** - different countries face different primary drivers:
  - **Russia & Canada**: Wildfire-dominated (boreal forest ecosystems).
  - **Brazil**: agriculture as primary driver.
  - **Indonesia**: Permanent agriculture and logging (plantation-based economy).
  - **United States**: Balanced distribution across wildfire, settlements, and logging.

- **Key Policy Implication**: Effective conservation policies must be tailored to regional drivers, not one-size-fits-all solutions.

## Data Limitations & Considerations

### Definition Constraints
- Analysis focuses on **dense forests only** (≥30% tree cover threshold).
- Does not account for forest gains or reforestation over the same period.
- Small-scale deforestation below threshold may not be captured.

### Data Inconsistencies
- Not all countries have data for all years (2001-2024).
- Some territories (French Guiana, Guadeloupe, etc.) not separately represented in lower-resolution maps.

### Methodological Decisions
- Used **average** tree cover loss instead of sum to handle missing years fairly.
- Limited analysis to **154 countries** present in both decades for valid comparison.
- Selected top 5 countries with complete year coverage for detailed driver analysis.

## Tools & Techniques
- **Programming Languages**: Python (Pandas, Matplotlib, Seaborn, GeoPandas).
- **Geospatial Analysis**: Natural Earth datasets for choropleth mapping.
- **Data Visualization**: Box plots, stacked bar charts, choropleth maps.
- **Data Sources**: Global Forest Watch tree cover loss dataset (2001-2024).
- **Database Queries**: SQL for data exploration and quality assessment.

## How to Use This Repository
1. **Exploratory Analysis**: Open two notebookes: `EDA_Deforestation_DecadesComparison.ipynb`and `EDA_Deforestation_Drivers.ipynb` to see the complete exploratory data analysis with code, visualizations, and insights for both questions separately.
2. **View the Presentation**: Check `EDA_tree_cover_loss.pdf` for a concise summary of findings.
3. **Run SQL Queries**: Execute `queries_project.sql` to explore data quality, identify missing years, and understand data inconsistencies.

<!-- ## Next Steps
1. Expand analysis to include **forest gain data** to calculate net change.
2. Investigate **climate variables** (temperature, precipitation) correlation with wildfire-driven loss.
3. Analyze **sub-national patterns** using higher-resolution data to identify specific regions within countries.
4. Incorporate **socioeconomic indicators** (GDP, population density, policy changes) to understand drivers more deeply.
5. Extend temporal analysis to include **earlier decades** (1990s-2000s) for longer-term trend assessment.
6. Address **data gaps** by collecting or estimating missing year values for more comprehensive country coverage. -->

## Acknowledgments
This EDA was built together with @AddUsername 🙌
