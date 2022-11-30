-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT backers_count, cf_id, outcome
FROM campaign
WHERE outcome = 'live'
GROUP BY backers_count, cf_id
ORDER BY COUNT(backers_count) DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT ba.cf_id, ca.outcome
FROM backers as ba, campaign as ca
WHERE ca.outcome = 'live'
GROUP BY ba.cf_id, ca.outcome, ca.backers_count
ORDER BY COUNT(ca.backers_count);


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT co.first_name, co.last_name, co.email, ca.goal - ca.pledged AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts AS co, campaign AS ca
WHERE ca.outcome = 'live'
ORDER BY "Remaining Goal Amount" DESC;

SELECT * FROM email_contacts_remaining_goal_amount;



-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT co.email, co.


-- Check the table