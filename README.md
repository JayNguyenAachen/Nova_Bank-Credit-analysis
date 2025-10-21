# Nova_Bank Credit Risk Analysis
## Project Background
 In this challenge, you’ll act as a credit risk analyst at Nova Bank, a financial institution that provides personal, medical, education, and business loans across the USA, UK, and Canada. Nova Bank wants to make lending fair and accessible while also protecting itself from unnecessary risk.
The main challenge is finding the right balance. If Nova Bank approves too many high-risk loans, it loses money. If it becomes too strict, it misses out on potential customers. By looking at the data, your job is to help the bank understand who tends to default and why, and how lending decisions can be made more reliable

## Data Set
- <a href="https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/main/Credit_Risk_Dataset_Onyx_Data_September_25.xlsx">Dataset</a>
## Questions To Explore 
•	Which types of borrowers are more likely to default? 

•	Do certain loan purposes (education, medical, personal, debt consolidation) carry more risk?

•	How do loan-to-income and debt-to-income ratios relate to repayment?

•	Does employment type or home ownership make a difference?

•	How do past defaults or longer credit histories affect loan outcomes?

•	Are there clear differences between borrowers in the USA, UK, and Canada?

•	Which loan grades or terms seem safer, and which are riskier?

•	Can groups of borrowers be identified that look “safe” versus “risky”?

## Skills/Tools Demonstated
- SQL: <a href=https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/main/novo.sql>Click here</a>
- Python: <a href=https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/main/NovoBank.ipynb>Click here </a>
- The following Power BI features were incorporated: <br>
      - DAX Measures <br>
      - Modelling <br>
      - Formating <br>
      - Page Navigator <br>
      - Filters <br>
      - Tooltips <br>
      - Button <br>
      - Visualizing
## Executive Summary
### Overview
The dashboard provides a high-level view of loan risk and portfolio characteristics, highlighting key metrics such as Total Loan Amount of **$312.43M** and Total Loans Issued of **32,581**, with **25,473** non-defaults and **7,108** defaults. It shows concentration by loan intent (Education and Medical are prominent), housing mainly rented, and employment dominated by full-time workers. Age distribution is skewed toward younger borrowers, especially 20–25, with a sizable chunk of loans in 36- and 60-month terms. The data suggest potential risk concentrations by age, employment type, and longer terms, indicating a need for tighter risk controls, refined credit criteria, and targeted remediation strategies to reduce defaults while maintaining portfolio growth.
![Image Alt](https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/a08a7c60cb45367b5fa8f0eec4013a56c0c12cf3/Screenshot%202025-10-19%20210106.png)

### Risk Analysis
- **Overall loan risk overview:** Total loan amount is **$312.43M** with **32,581** loans issued, including **7,108** defaults and **25,473** non-defaults. This indicates a notable level of default risk that warrants ongoing monitoring.
- **Loan purpose and risk:** Major loan intents are Education and Medical, signaling concentration risk. It’s important to track default and repayment performance by purpose
- **Housing and employment:** Most borrowers rent rather than own, and employment is dominated by full-time workers. This suggests sensitivity to labor market conditions and rental market dynamics.
- **Age and loan term:** The borrower base is concentrated in the **20–25 and 26–30** age ranges. The most common loan terms are 36 and 60 months, implying higher risk potential for longer terms.
- **Risk segmentation:** There is a mix of medium and high-risk segments, indicating multiple risk channels such as age, marital status, and occupation type.
![Image Alt](https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/a08a7c60cb45367b5fa8f0eec4013a56c0c12cf3/Screenshot%202025-10-19%20210114.png)

### Risk Analysis Contries Based
- Geographic exposure is uneven, with bubbles on the map indicating higher concentrations in certain regions, signaling locale-specific risk and potential impacts on hiring or relocation strategies. The risk-tier breakdown reveals a meaningful share in the high-risk segment, suggesting tighter approvals, enhanced income verification, and targeted remediation may be warranted.
- Country-level defaults (Canada, USA, UK) are all **above 21%**, underscoring country-specific risk factors that HR and risk teams should monitor for localization effects, cross-border operations, and regional workforce planning. Overall, these insights point to the need for geography- and segment-aware risk scoring, stronger retention and compensation strategies to stabilize productivity, and proactive risk mitigation aligned with talent strategy.
  ![Image Alt](https://github.com/JayNguyenAachen/Nova_Bank-Credit-analysis/blob/a08a7c60cb45367b5fa8f0eec4013a56c0c12cf3/Screenshot%202025-10-19%20210122.png)
  
## Recommendation 
- Improve risk models with deeper segmentation by age, marital status, and employment type.
- Reassess exposure to higher-risk loan purposes and longer-term loans.
- Strengthen income verification and affordability checks, especially for longer-term loans.
- Consider remediation strategies (adjusted pricing, collateral, or conditional approvals) to reduce default risk while supporting portfolio growth.  



  
