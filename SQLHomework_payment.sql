1.  SELECT SUM (sum) FROM payment_trx; 

2.  SELECT * FROM payment_trx WHERE sum >500;

3.  SELECT * FROM client WHERE id = (SELECT client_id FROM card WHERE id = (SELECT card_id FROM payment_trx WHERE sum = (SELECT MAX (sum) FROM payment_trx)));

4.  SELECT personal_manager.id, personal_manager.name, SUM(payment_trx.sum)
FROM personal_manager
LEFT JOIN client ON client.personal_manager_id = personal_manager.id
LEFT JOIN card ON card.client_id = client.id
LEFT JOIN payment_trx ON payment_trx.card_id = card.id
GROUP BY personal_manager.id;

5.  SELECT name FROM client WHERE name LIKE 'K%';

6.  INSERT INTO personal_manager (id, name) VALUES (4,'Negro Anastasiia');

7.  INSERT INTO client (id, name, date_of_birth, personal_manager_id) VALUES (7, 'Ivan Ivanov', '1996-01-01', 4);
    INSERT INTO client (id, name, date_of_birth, personal_manager_id) VALUES (8, 'Anna Ivanova', '1988-02-03', 4);
