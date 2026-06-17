# BrightCart E-Commerce Profitability Analysis

Project from: https://www.analystbuilder.com/projects/e-commerce-profitability-analysis-KvrTi?tab=overview

Stack: Excel, Tableau (https://public.tableau.com/app/profile/anushma.thapa/viz/BrightCartE-CommerceProfitabilityAnalysis/Story1)

<br>

You are a financial analyst at a direct-to-consumer e-commerce brand that sells products across multiple categories and channels. 
While top-line revenue looks healthy, the CEO suspects that not all product categories and sales channels are actually profitable once you account for shipping, returns, platform fees, and marketing costs. 
In this project you will perform a true profitability analysis by connecting order-level transaction data with product costs and marketing spend to find out where the company is actually making (and losing) money.

BrightCart is an online retailer selling products across 8 categories through their website, mobile app, third-party marketplaces, and social commerce. 
The company did $1M+ in gross revenue over the past two years, but net margins have been shrinking. The CEO wants to know which product categories and sales channels are truly profitable after all costs, 
which marketing platforms are delivering the best return on ad spend, and whether the return rate is eating into margins. You have three datasets: order-level transactions, a product catalogue with cost data, 
and monthly marketing spend by platform.

<br>

## Dataset Description
| Table | Rows | Description |
| --- | --- | --- |
| orders.csv | 2000 | Order-level transactions including revenue, costs, discounts, returns and profit |
| products.csv |207 | Product catalogue with unit costs, selling prices and supplier information |
| marketing_spend.csv | 144 | Monthly marketing spend across 6 platforms with ROAS, CPC, CPA and conversions |

<br>

## Questions to Answer
1. What is the average profit margin by product category? Which categories are the most and least profitable, and what is driving the difference (product cost, shipping, returns, or discounts)?

2. How does profitability differ across sales channels (Website, Mobile App, Marketplace, Social Commerce)? Which channel has the best and worst profit per order after accounting for platform fees?

3. What is the return rate by category and channel? Estimate how much total revenue was lost to returns over the analysis period.

4. Analyze the marketing spend data: Which advertising platform delivers the best ROAS (Return on Ad Spend)? Are there any platforms where the company is spending money but not getting a positive return?

5. If the CEO asked you to cut 20% of the marketing budget, which platforms and months would you recommend reducing spend on? Support your recommendation with data.

<br>

## Key Findings

### Slide 2 - Category Profitability

<img width="792" height="458" alt="image" src="https://github.com/user-attachments/assets/64611082-b9f1-4dc3-898b-ca3f73e6ab00" />

Electronics is the most profitable category at 31.13% profit margin. Books is the least profitable at 11.94%. Across all categories, product cost is the largest expense at 38–42% of gross revenue. 
Shipping cost has the widest variation between categories, ranging from 13.5% for Electronics to 27.95% for Books - the primary driver of Books' low profit margin. 
Returns and discounts are relatively consistent across categories and have a smaller impact on profitability.

<br>

### Slide 3 - Channel Analysis

<img width="796" height="455" alt="image" src="https://github.com/user-attachments/assets/91cd95ca-2d69-485a-a418-b8b62894000c" />

Mobile App and Website are the most profitable channels at 29.76% and 27.01%, respectively. Marketplace and Social Commerce are the least profitable at 13.03% and 15.37%. 
The primary driver of this gap is platform fees. Marketplace charges an average of $18.97 per order and Social Commerce $9.87, costs that do not exist on owned channels (Mobile App & Website). 
Without platform fees, Marketplace and Social Commerce margins would be significantly more competitive.

<br>

### Slide 4 - Return Analysis

<img width="782" height="356" alt="image" src="https://github.com/user-attachments/assets/33c93c6d-aeb0-4978-909b-51d91f739c64" />

Return rates are relatively consistent across both categories and channels, ranging from 5.67% to 9.14%.
Electronics, Books & Clothing have the highest return rate by category ranging from 8.19% to 8.61%.
Social Commerce has the highest return rate by channel at 9.14% and Marketplace the lowest at 6.44%. 
Total revenue lost to returns across the full analysis period was $20,582.
In order to reduce returns and in turn, the revenue lost to returns, BrightCart should ask their customers why the reason for their return. With this extra field, they could understand why specific product categories and sales channels have higher return rates than others.

<br>

### Slide 5 - Marketing ROAS

<img width="778" height="152" alt="image" src="https://github.com/user-attachments/assets/24107052-6aec-419b-9604-727e73a8a3c7" />

TikTok Ads and Influencer marketing deliver the highest ROAS in the dataset. Email Marketing delivers the lowest at 5.41x. No platform has a negative ROAS, meaning all platforms generate more revenue than they cost. However, when accounting for BrightCart's overall cost structure, a minimum viable ROAS of 4.19x is required to break even after all business costs are considered. Only Email Marketing sits close to this threshold, making it the least effective platform in the context of overall business profitability. All other platforms exceed this threshold comfortably.

<br>

### Slide 6 - Budget Cut Recommendation

<img width="797" height="448" alt="image" src="https://github.com/user-attachments/assets/a8144d70-774c-44e4-9851-621a471fe599" />

A 20% annual marketing budget cut equates to approximately £50,351 in savings required per year. Email Marketing is the primary candidate for reduction. Cutting it entirely would save BrightCart $24,500 annually with minimal revenue impact, given its consistently low ROAS relative to all other platforms. 
ROAS trend analysis shows Email Marketing is the most consistent but least performing platform over the 24 month period. Higher ROAS platforms like TikTok and Influencer show more volatility month to month but deliver significantly stronger returns. Based on average monthly ROAS performance, the months most suitable for spend reduction are majority months in the second half of the year: January, July, August, September, November & December. These all fall below the overall monthly average ROAS.

<br>

## Recommendations

### 1. Negotiate Better Shipping Rates for Books
BrightCart should try to renegotiate courier contracts specifically for book orders. 
A minimum order value threshold for free shipping would also encourage customers to bundle books with other purchases, spreading the shipping cost across a larger basket. 

### 2. Introduce Digital Alternatives for Books
Offering digital books, similar to how Amazon offers Kindle books alongside physical books, would eliminate shipping costs entirely for customers who choose that option.

### 3. Shift Acquisition Strategy to Prioritise Owned Channels Over Third-Party Platforms
BrightCart should reposition Marketplace and Social Commerce as acquisition tools rather than primary revenue channels. This could include retargeting campaigns that encourage first-time Marketplace or Social Commerce buyers to create a Website or Mobile App account, supported by a welcome discount or loyalty points for switching. BrightCart shouldn't abandon these channels entirely, but use them for discovery while directing repeat customers toward the owned channels.

### 4. Implement a Return Reason Capture Field at the Point of Return
BrightCart should add a mandatory dropdown field during the returns process asking customers to select a reason - options such as wrong size, not as described, changed mind, damaged, etc. This is a low-cost, high-value change that would convert the current category-level return rate data into actionable root-cause data, allowing future analysis to target the specific fix each category/channel needs.

### 5. Cut Email Marketing Campaigns
Email marketing has the lowest ROAS value of 5.41x, which barely exceeds BrightCart's minimum ROAS of 4.19x to break even. This will save the company roughly $24,500 per year in marketing spend. The further $25k in budget cut can be saved by reducing spending on Facebook Ads and Google Ads, as these produce the next lowest ROAS values.

### 6. Time Marketing Spend Increases Around Seasonal ROAS Strength
Since ROAS dips below the monthly average in January, July, August, September, November & December, BrightCart should treat these as lower-priority spend months and instead shift a larger proportion of the annual marketing budget into the stronger-performing months (2nd half of the year). This seasonal reallocation, rather than a flat reduction throughout the year, would help protect overall revenue while still achieving the targeted budget cut.
