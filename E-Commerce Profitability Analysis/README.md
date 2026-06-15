Project from: https://www.analystbuilder.com/projects/e-commerce-profitability-analysis-KvrTi?tab=overview

Stack: Excel, Tableau (https://public.tableau.com/app/profile/anushma.thapa/viz/TableauDashboard_17815602034220/Story1#1)


You are a financial analyst at a direct-to-consumer e-commerce brand that sells products across multiple categories and channels. 
While top-line revenue looks healthy, the CEO suspects that not all product categories and sales channels are actually profitable once you account for shipping, returns, platform fees, and marketing costs. 
In this project you will perform a true profitability analysis by connecting order-level transaction data with product costs and marketing spend to find out where the company is actually making (and losing) money.

BrightCart is an online retailer selling products across 8 categories through their website, mobile app, third-party marketplaces, and social commerce. 
The company did $1M+ in gross revenue over the past two years, but net margins have been shrinking. The CEO wants to know which product categories and sales channels are truly profitable after all costs, 
which marketing platforms are delivering the best return on ad spend, and whether the return rate is eating into margins. You have three datasets: order-level transactions, a product catalogue with cost data, 
and monthly marketing spend by platform.


**Dataset Description**
Table Rows Description
orders.csv 2000 Order-level transactions including revenue, costs, discounts, returns and profit
products.csv120Product catalogue with unit costs, selling prices and supplier information
marketing_spend.csv144Monthly marketing spend across 6 platforms with ROAS, CPC, CPA and conversions


**Questions to Answer:**
1. What is the average profit margin by product category? Which categories are the most and least profitable, and what is driving the difference (product cost, shipping, returns, or discounts)?

2. How does profitability differ across sales channels (Website, Mobile App, Marketplace, Social Commerce)? Which channel has the best and worst profit per order after accounting for platform fees?

3. What is the return rate by category and channel? Estimate how much total revenue was lost to returns over the analysis period.

4. Analyze the marketing spend data: Which advertising platform delivers the best ROAS (Return on Ad Spend)? Are there any platforms where the company is spending money but not getting a positive return?

5. If the CEO asked you to cut 20% of the marketing budget, which platforms and months would you recommend reducing spend on? Support your recommendation with data.


**Key Findings**
Slide 1 - Title Card

Slide 2 - 

Electronics is the most profitable category at 31.13% profit margin. Books is the least profitable at 11.94%. Across all categories, product cost is the largest expense at 38–42% of gross revenue. Shipping cost has the widest variation between categories, ranging from 13.5% for Electronics to 27.95% for Books — the primary driver of Books' low margin. Returns and discounts are relatively consistent across categories and have a smaller impact on profitability.

Category
Profit Margin
Electronics
31.13%
Toys
26.15%
Home & Kitchen
25.37%
Food & Beverage
24.76%
Sports
23.50%
Clothing
19.99%
Beauty
17.39%
Books
11.94%

Slide 3 - 

Mobile App and Website are the most profitable channels at 29.76% and 27.01% respectively. Marketplace and Social Commerce are the least profitable at 13.03% and 15.37%. The primary driver of this gap is platform fees — Marketplace charges an average of £18.97 per order and Social Commerce £9.87, costs that do not exist on owned channels. Without platform fees, Marketplace and Social Commerce margins would be significantly more competitive.
ChannelProfit MarginAvg Platform Fee Per OrderMobile App29.76%£0.00Website27.01%£0.00Social Commerce15.37%£9.87Marketplace13.03%£18.97

Slide 4 - 

Return rates are relatively consistent across both categories and channels, ranging from 5.67% to 9.14% — approximately a 3 percentage point spread. Electronics has the highest return rate by category at 8.61% and Food & Beverage the lowest at 5.67%. Social Commerce has the highest return rate by channel at 9.14% and Marketplace the lowest at 6.44%. Total revenue lost to returns across the full analysis period was £20,582.

Slide 5 - 

TikTok Ads and Influencer marketing deliver the highest ROAS in the dataset. Email Marketing delivers the lowest at 5.41x. No platform has a negative ROAS, meaning all platforms generate more revenue than they spend. However, when accounting for BrightCart's overall cost structure, a minimum viable ROAS of 4.19x is required to break even after all business costs are considered. Only Email Marketing sits close to this threshold, making it the least effective platform in the context of overall business profitability. All other platforms exceed this threshold comfortably.

Slide 6 - 

A 20% annual marketing budget cut equates to approximately £50,351 in savings required. Email Marketing is the primary candidate for reduction — cutting it entirely would save £24,500 annually with minimal revenue impact given its consistently low ROAS relative to all other platforms. ROAS trend analysis shows Email Marketing is the most consistent but least performing platform over the 24 month period. Higher ROAS platforms like TikTok and Influencer show more volatility month to month but deliver significantly stronger returns. Based on monthly ROAS performance, the months most suitable for spend reduction are January, July, August, September, November, and December, which all fall below the overall monthly average ROAS.


**Recommendations**

1. Reduce Shipping Costs in the Books Category
Books carries the highest shipping cost at 27.95% of gross revenue and the lowest profit margin at 11.94%. Shipping is the primary drag on this category. BrightCart should negotiate better courier rates for book orders, introduce a minimum order value to qualify for free shipping, or explore digital alternatives such as ebooks for popular titles. Shipping costs are one of the most controllable cost levers available and addressing this could materially improve Books' margin.

2. Migrate Customers From Marketplace and Social Commerce to Owned Channels
Mobile App and Website deliver margins of 29.76% and 27.01% compared to just 13.03% and 15.37% on Marketplace and Social Commerce. The difference is almost entirely explained by platform fees — £18.97 per order on Marketplace and £9.87 on Social Commerce. BrightCart should incentivise customers to purchase through owned channels via exclusive discounts or a loyalty programme, using third party platforms for customer acquisition only rather than as primary sales channels.

3. Reallocate Marketing Budget From Email Marketing to TikTok Ads and Influencers
Email Marketing delivers the lowest ROAS at 5.41x — only narrowly clearing the 4.19x minimum viable threshold. TikTok Ads and Influencer campaigns consistently deliver the strongest returns in the dataset. Cutting Email Marketing spend entirely would save approximately £24,500 annually with minimal revenue impact. Reallocating this budget toward TikTok Ads and Influencer marketing would generate significantly more attributed revenue for the same or lower total spend.
