#Challenge 1

#Step 1
Select au_id, ta.title_id, t.advance * ta.royaltyper / 100  AS advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
From titleauthor ta
INNER JOIN  titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON t.title_id = s.title_id;

#Step 2
Select title_id, au_id, advance, SUM(sales_royalty) AS Agregated_royalties
From (
Select au_id, ta.title_id, t.advance * ta.royaltyper / 100  AS advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
From titleauthor ta
INNER JOIN  titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON t.title_id = s.title_id
) as first_step
Group by au_id,title_id,advance;

#Step3
Select au_id, (advance+Agregated_royalties) AS Profit
From(
Select title_id, au_id, advance, SUM(sales_royalty) AS Agregated_royalties
From (
Select au_id, ta.title_id, t.advance * ta.royaltyper / 100  AS advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
From titleauthor ta
INNER JOIN  titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON t.title_id = s.title_id
) as first_step
Group by au_id,title_id,advance
) as second_step
ORDER BY  Profit DESC
LIMIT 3;

#Challenge 2
Create Temporary Table publications.tilman_first_step
Select au_id, ta.title_id, t.advance * ta.royaltyper / 100  AS advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
From titleauthor ta
INNER JOIN  titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON t.title_id = s.title_id;

Create Temporary Table publications.tilman_second_step
Select title_id, au_id, advance, SUM(sales_royalty) AS Agregated_royalties
From tilman_first_step
Group by au_id,title_id,advance;

Create Temporary Table publications.tilman_result
Select au_id, (advance+Agregated_royalties) AS Profit
From tilman_second_step
ORDER BY  Profit DESC
LIMIT 3;


#Challenge 3
#Removed the Limit 3 from the table before and saved it as publications.tilman_result2

Create Temporary Table publications.tilman_first_step
Select au_id, ta.title_id, t.advance * ta.royaltyper / 100  AS advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
From titleauthor ta
INNER JOIN  titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON t.title_id = s.title_id;

Create Temporary Table publications.tilman_second_step
Select title_id, au_id, advance, SUM(sales_royalty) AS Agregated_royalties
From tilman_first_step
Group by au_id,title_id,advance;

Create Temporary Table publications.tilman_result2
Select au_id, (advance+Agregated_royalties) AS Profit
From tilman_second_step
ORDER BY  Profit DESC;

#Create Temporary Table publications.tilman_chall3
Select au_id, SUM(Profit)
From tilman_result2
Group by au_id;
