--Placements
--You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID --(ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

SELECT S.NAME FROM STUDENTS S
                                JOIN PACKAGES MY_PACKAGE
                                                    ON  S.ID = MY_PACKAGE.ID
                                LEFT JOIN FRIENDS
                                                ON S.ID = FRIENDS.ID
                                LEFT JOIN PACKAGES FRIENDS_PACKAGE
                                                ON FRIENDS.FRIEND_ID = FRIENDS_PACKAGE.ID
                                WHERE MY_PACKAGE.SALARY < FRIENDS_PACKAGE.SALARY
                                ORDER BY FRIENDS_PACKAGE.SALARY;