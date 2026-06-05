Project from: https://www.analystbuilder.com/projects/saas-revenue-churn-analysis-UPoYs?tab=overview

You are a business analyst at a B2B SaaS company that sells project management software. The leadership team is preparing for a board meeting and needs a clear picture of revenue trends, customer retention, and churn drivers. In this project you will analyse subscription data, monthly recurring revenue (MRR), and customer behaviour to identify what is causing churn and where the best opportunities for revenue growth are. This type of analysis is common at SaaS startups and is directly relevant to roles in finance, product analytics, and growth.

CloudTask Pro is a SaaS company that has grown from 0 to 600 customers since 2022. While revenue has been growing, the board has raised concerns about a high churn rate. The CFO wants to understand the monthly churn trends, which customer segments are most at risk, and what the company’s unit economics look like (MRR per customer, customer acquisition cost vs. lifetime value). You have access to a subscription-level dataset with customer details, plan info, and churn status, as well as a monthly revenue summary.

Stack: Python & Pandas on Jupyter Notebook

<br>

**Questions:**

**1. What is the overall churn rate, and how has the monthly churn rate trended over the past 4 years? Is churn improving or getting worse?**

Overall churn rate for this business is 52.17% (2dp). 313 out of 600 customers have churned.

<img width="770" height="359" alt="image" src="https://github.com/user-attachments/assets/1afea4e9-2136-419c-a598-1d7ee42537dc" />

The monthly churn rate has decreased overtime (past 4 years). In the first year, monthly churn rate was generally higher because there were fewer customers so it had a bigger impact on churn rate if a customer churned.

After the first year, monthly churn rate sits between 0 - 7.5%

Churn is improving as the 'Monthly Churn Rate Trend' graph shows that churn rate is slowly decreasing overtime.

Additionally, there are spikes where monthly churn rate increases every April. This could be because most companies begin their financial calendars in April. So, this may be where they review their subscriptions if they would like to keep or cancel them. Therefore, it should be expected that every April there will be a spike in churn rate.

<br>

**2. Which subscription plan (Starter, Professional, Business, Enterprise) has the highest churn rate? Does billing cycle (monthly vs. annual) significantly impact retention?**

<img width="768" height="373" alt="image" src="https://github.com/user-attachments/assets/06dcaa63-9595-4719-8556-765c06009e23" />

Customers with the 'Starter' subscription plan have the highest churn rate of 70.51% (2dp), significantly more than the others, making it the highest-risk plan.

It's followed by 'Professional' then 'Business' then 'Enterprise'. This is likely because starters usually consist of individuals. They may just be testing out the software for fun or personal reasons, so they are less commited and reliant on it. Whereas, customers using it for work rely on it heavily and it is a necessity to them.

<img width="772" height="377" alt="image" src="https://github.com/user-attachments/assets/b4a4f754-bc41-4149-95a2-44929995f23b" />

The monthly billing cycle has about 20% more churn rate than the annual one, making it higher risk.

This could be because customers with monthly cycles are less committed to using the software for a long period of time to begin with. Therefore, they are more likely to cancel their subscription. They also have more chances to cancel their subscriptions (12 times a year as opposed to 1 time).

<br>

**3. What are the top 3 reasons customers churn, and do these reasons differ by plan type or company size?**

<img width="192" height="136" alt="image" src="https://github.com/user-attachments/assets/25d1081a-7831-47ff-a51f-15c23ab317ec" />

Top 3 reasons customers churn: Budget Cuts, Price Too High, Company Closed
Two of them relate to the software no longer being affordable for the customer.

<img width="773" height="381" alt="image" src="https://github.com/user-attachments/assets/db05c338-4435-40f9-85ea-05f6126ba867" />

Top 3 churn reasons by subscription plan:

Starter - Budget cuts, Price too high, Company closed

Professional - Budget cuts, Price too high, Company closed

Business - Missing features, No longer needed, Poor support

Enterprise - Company closed, No longer needed, Switched competitor

The top churn reasons do differ by subscription plan. The customers who were on 'Starter' and 'Professional' plans have the same top 3 reasons. Most of them relating to finances and unaffordability of the product. Whereas, customers who were on the 'Enterprise' and 'Business' plans don't have these reasons as they are bigger businesses that are able to afford the product more comfortably. They tend to leave because they either don't need the product anymore or aren't happy with it anymore.

<img width="777" height="376" alt="image" src="https://github.com/user-attachments/assets/3bf235cd-a378-4901-9601-dac26936a8b6" />

Top 3 churn reasons by company size:

1-10 - Budget cuts, Price too high, Company closed

11-50 - No longer needed, Company closed, Poor support

51-200 - Budget cuts, Price too high, Company closed

201-500 - Budget cuts, Missing features, Price too high

500+ - Company closed, Poor support, third is a tie between 4 reasons

The top churn reasons do differ by company size. However, company closing is a reason for all company sizes, except medium size companies (201-500). Therefore, there is no guarantee that the bigger a company is, the less likely it is to churn because it closed. It also seems all company sizes have financial reasons for churning, except companies that are really big (500+) and small companies (11-50). Additionally, these company sizes (11-50 and 500+) tend to churn due to poor support and no longer needing the product.

<br>

**4. Calculate the average Customer Lifetime Value (CLV) by plan. Compare this to the Customer Acquisition Cost (CAC). Which plans are the most and least profitable?**

<img width="771" height="379" alt="image" src="https://github.com/user-attachments/assets/bcd74263-a1ed-4a7f-b67e-ee445cbad1fc" />

Average CLV by plan / Most to least profitable:

Enterprise: 66738.14 (2dp)

Business: 21899.73 (2dp)

Professional: 8138.93 (2dp)

Starter: 1878.94 (2dp)

Most profitable plans are where the customers buy 'Business' or 'Enterprise' plans. This may be because these plans are more expensive than the others ('Professional' & 'Starter'), so they bring in more revenue. Also, these customers may have longer lifespans using the product, have annual subscriptions, churn less. All of these reasons lead to these customers having much higher average CLV. As a result, the company should try to acquire as many big businesses that will need 'Business' & 'Enterprise' subscription plans as possible.

Average CAC per customer is 16.00 (2dp). This is very low compared to the Average CLV by plan. Therefore the CLV:CAC ratio is is very healthy for this company and customer acquisition efforts are profitable. The Total CAC for all 600 customers is 9601.95. In comparison, the total revenue from all 600 customers is 8394643.87 (2dp).

<br>

**Key Takeaways:**

- CloudTask Pro has achieved strong growth since launching in 2022, reaching 600 customers and generating over $8.39 million in total revenue. However, customer churn remains a significant challenge, with an overall churn rate of 52.17%, meaning that 313 out of 600 customers have cancelled their subscriptions.

- Despite the high cumulative churn rate, monthly churn performance has improved over time. Monthly churn rates have generally declined since the company's early years and now typically remain between 0% and 7.5%, indicating that customer retention efforts have become more effective as the customer base has matured. A recurring increase in churn during April suggests a seasonal pattern that may be linked to customers reviewing software budgets at the start of a new financial year.

- The analysis identified clear differences in churn risk across customer segments. Starter plan customers have the highest churn rate at 70.51%, while Enterprise customers have the lowest churn rate. Customers on monthly billing cycles are also significantly more likely to churn than those on annual contracts, highlighting the importance of long-term commitments for retention.

- Financial factors are the primary drivers of churn among smaller customers. Budget cuts and pricing concerns account for a large proportion of cancellations on Starter and Professional plans. In contrast, larger Business and Enterprise customers are more likely to churn because of product-related issues such as missing features, poor support, reduced business need, or switching to competitors.

- From a profitability perspective, Business and Enterprise plans generate substantially greater value than lower-tier plans. Enterprise customers have an average CLV of £66,738, while Business customers generate approximately £21,900 in lifetime value. With an average CAC of only £16 per customer, CloudTask Pro maintains an exceptionally strong CLV-to-CAC ratio, indicating that customer acquisition efforts are highly profitable and scalable.

- Overall, the company is in a healthy financial position with strong unit economics, improving retention trends, and significant opportunities to increase revenue by reducing churn among lower-tier customers and expanding higher-value customer segments.

<br>

**Recommendations:**

1. Reduce churn among Starter and Professional customers through pricing and retention initiatives.

Since budget cuts and pricing concerns are the leading causes of churn for these segments, the company should consider introducing retention offers, discounted annual plans, loyalty incentives, or feature-limited lower-cost options. These actions could help retain price-sensitive customers who might otherwise cancel.

2. Increase adoption of annual billing plans.

Customers on monthly subscriptions churn significantly more frequently than annual subscribers. Offering stronger discounts for annual commitments, promoting annual plans during onboarding, and encouraging upgrades before renewal periods could improve retention and increase predictable recurring revenue.

3. Launch proactive retention campaigns before April.

The recurring spike in churn during April suggests that customers reassess software spending at the start of a financial year. CloudTask Pro should proactively engage customers during the months leading up to April through value-focused communications, renewal incentives, account reviews, and customer success outreach.

4. Improve product and support experiences for larger customers.

Business and Enterprise customers often churn because of missing features, poor support, or competitive alternatives. The company should prioritise feature requests from larger accounts, strengthen customer success programmes, provide faster support response times, and conduct regular business reviews with high-value customers.

5. Focus customer acquisition efforts on Business and Enterprise segments.

Business and Enterprise plans generate substantially higher lifetime value and lower churn rates. Sales and marketing resources should prioritise acquiring organisations that fit these customer profiles, as they offer the greatest long-term profitability and revenue stability.

6. Conduct deeper analysis of competitive churn.

Enterprise customers frequently cite switching to competitors as a reason for cancellation. Exit surveys, customer interviews, and competitor analysis should be used to understand which competitors are winning these customers and what product gaps need to be addressed.
