-- FRIENDS SALARY PROBLEM --HACKER 

select S.Id, S.Name, F.Friend_Id,(Select S.Name from Students S, Friends F where  F.Friend_Id = S.Id), P.Salary from Students S, Friends F, Packages P 
where 
S.Id = F.Id 
and F.Friend_Id = P.Id -- For ORIGINAL TABLE

select S.Id, S.Name, F.Friend_Id, P.Salary from Students S, Friends F, Packages P 
where 
S.Id = F.Id 
and F.Friend_Id = P.Id -- Friend Salary TABLE

--FINAL QUERY -- O/P when Salary is less then Friends salary and Order by Friends salary

select S.Id, S.Name, F.Friend_Id, P1.Salary as Salary, P2.Salary as Friends_Salary
from Students S, Friends F, Packages P1 , Packages P2
where S.Id = F.Id 
and F.Id = P1.Id
and F.Friend_Id = P2.Id
and P2.Salary > P1.Salary
order by P2.Salary

--ENTIRE O/P
1 Samantha 14 15.5 		15.1
2 Julia    15 15.6 		17.1
3 Britney  18 16.700001 13.15
4 Kristeen 19 18.799999 33.330002
5 Dyana    20 31.5 		22.16
6 Jenny     5 45.0 		31.5
7 Christene 6 47.0 		45.0
8 Meera     7 46.0 		47.0
9 Priya     8 39.0 		46.0
10 Priyanka 1 11.1 		15.5
11 Paige    2 12.1 		15.6
12 Jane     3 13.1 		16.700001
13 Belvet   4 14.1 		18.799999
14 Scarlet  9 15.1 		39.0
15 Salma   10 17.1 		11.1
16 Amanda  11 21.1 		12.1
17 Maria   12 31.1 		13.1
18 Stuart  13 13.15 	14.1
19 Aamina  16 33.330002 21.1
20 Amina   17 22.16 	31.1

select S.Name
from Students S, Friends F, Packages P1 , Packages P2
where S.Id = F.Id 
and F.Id = P1.Id
and F.Friend_Id = P2.Id
and P2.Salary > P1.Salary
order by P2.Salary

--O/P
Stuart
Priyanka
Paige
Jane
Julia
Belvet
Amina
Kristeen
Scarlet
Priya
Meera