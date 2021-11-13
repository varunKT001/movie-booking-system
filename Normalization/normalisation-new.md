#### Customer:

1. **FDs**
   cust_id &#8594; {cust_name, cust_age, cust_contact}

2. **Candidate Key**
   cust_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   cust_id &#8594; {cust_name, cust_age, cust_phone}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Ticket

1. **FDs**
   ticket_id &#8594; {price, cust_id, show_id}

2. **Candidate Key**
   ticket_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   ticket_id &#8594; {price, cust_id, show_id}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Reservation

1. **FDs**
   reservation_id &#8594; {ticket_id, show_id, seat_id}

2. **Candidate Key**
   reservation_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   reservation_id &#8594; {ticket_id, show_id, seat_id}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Seat

1. **FDs**
   seat_id &#8594; {seat_number, seat_row, ent_id}

2. **Candidate Key**
   seat_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   seat_id &#8594; {seat_number, seat_row, ent_id}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Shows

1. **FDs**
   show_id &#8594; {show_slot, show_date, ent_id, movie_id}

2. **Candidate Key**
   show_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   show_id &#8594; {show_slot, show_date, ent_id, movie_id}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Movie Room

1. **FDs**
   ent_id &#8594; {total_seats, room_name}

2. **Candidate Key**
   ent_id

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   ent_id &#8594; {total_seats, room_name}
   Since the left side of the FD is the super key, the relation follows BCNF.

#### Movie

1. **FDs**
   movie_name &#8594; {duration, genre, rating}

2. **Candidate Key**
   movie_name

3. **1NF**
   No multivalued attribute, hence the relation is in 1NF.

4. **2NF**
   Since there is only one attribute in the candidate key, all the non-key attributes are fully functional dependent on the primary key, and hence the relation is in 2NF form.

5. **3NF**
   Since there are no transitive dependencies present (no non-prime attribute derives other non-prime attributes), the relation is in 3NF.

6. **BCNF**
   movie_name &#8594; {duration, genre, rating}
   Since the left side of the FD is the super key, the relation follows BCNF.
