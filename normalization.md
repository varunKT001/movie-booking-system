1.	Customer Table:
Candidate key = movie_id
f.d. = cust_id -> cust_age, cust_name, phone no.
All normalization are followed.  

2.	Movie room table:
Candidate key = ent_id, room_name
F.D. = ent_id -> room_name
Ent_id-> total_seats
Room_name ->total_seats

2 NF is not followed because partial dependency 
ent_idtotal_seat/ Room_name ->total_seats
so we split the table

ent_id	| room_name
	    |
	    |
	

room_name |	total_seat
	      | 
	      |
	
3NF and BCNF followed by above tables

3.	Movie Table:
Candidate key = movie_id, movie_name
f.d. =  movie_id->movie_name, duration, genre, rating
movie_name -> movie_id , duration, genre, rating

2NF is not followed because partial dependency movie_id duration (more partial dependencies are present) so we split the table

Movie_id  |	Movie_name
	      |
	      |
	

Movie_name | duration	| genre	| rating
		   |	        |       |
		   |	        |       |
			
          3NF and BCNF followed by above tables
4.	Reservation Table
Cand. Key = r_id
f.d. = r_id -> ticket_id, show_id, seat_id
ticket_id-> show_id 

3NF not followed becoz in FD ticket_id ->show_id  ticket_id is not super key
Therefore decompose

R_id  |	Ticket_id	| Seat_id
      |             |
      |             |		
		
		

Ticket_id |	Show_id
	      |
          |
	
	
But the second table is not needed as there is already a relation containing both these attributes therefore we only eliminate show_id attribute from reservation_table.

Further BCNF is followed.

5.	Seat Table:
c.k. = seat_id

f.d. = seat_id -> seat_no, seat_row, ent_id
seat_no. -> seat_row 


3NF not followed bcoz in F.D. seat_no. -> seat_row , seat no. is not super key
Therefore we decompose

Seat_id	Seat_no.  |	Ent_id
		          |
                  |
		
		
Seat_no.  |	Seat_row
	      |
          |
	
	




	Further BCNF is followed.
6.	Shows_table 
c.k. = show_id

F.D. = show_id -> show_slot, show_date, ent_id, movie_id

only one F.D. which follows all normalization forms.

7.	Tickets_table
c.k. = ticket_id

F.D. = ticket_id -> customer_id, show_id , price

Only one F.D. which follows all 4 n.f. 
