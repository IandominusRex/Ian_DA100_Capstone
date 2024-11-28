SELECT transaction_id, t.gocard_id, date, amount, expense_type, txn_type, customer_id, name, latitude, longitude, town, lat, lng FROM transactions t 
LEFT JOIN gocards g ON t.gocard_id  = g.gocard_id 
LEFT JOIN malls m ON t.mall_location  = m.name 
LEFT JOIN towns t2 ON m.town = t2.town_name;

