CREATE OR REPLACE TABLE orders (
    order_id INTEGER,
    customer_id INTEGER,
    order_date DATE,
    status STRING,
    total_amount NUMBER(10,2),
    payment_method STRING
);

INSERT INTO orders VALUES
(1001, 501, '2026-05-01', 'Delivered', 55000.00, 'UPI'),

(1002, 502, '2026-05-02', 'Shipped', 18000.00, 'Card'),

(1003, 503, '2026-05-02', 'Delivered', 2500.00, 'Cash'),

(1004, 504, '2026-05-03', 'Pending', 1500.00, 'UPI'),

(1005, 505, '2026-05-03', 'Delivered', 800.00, 'Card'),

(1006, 506, '2026-05-04', 'Shipped', 12000.00, 'Net Banking'),

(1007, 507, '2026-05-04', 'Cancelled', 22000.00, 'UPI'),

(1008, 508, '2026-05-05', 'Delivered', 8500.00, 'Card'),

(1009, 509, '2026-05-05', 'Pending', 4500.00, 'Cash'),

(1010, 510, '2026-05-06', 'Delivered', 7000.00, 'UPI'),

(1011, 511, '2026-05-06', 'Shipped', 35000.00, 'Card'),

(1012, 512, '2026-05-07', 'Delivered', 4000.00, 'Net Banking'),

(1013, 513, '2026-05-07', 'Pending', 9000.00, 'UPI'),

(1014, 514, '2026-05-08', 'Delivered', 3000.00, 'Cash'),

(1015, 515, '2026-05-08', 'Shipped', 42000.00, 'Card'),

(1016, 516, '2026-05-09', 'Delivered', 28000.00, 'UPI'),

(1017, 517, '2026-05-09', 'Cancelled', 32000.00, 'Net Banking'),

(1018, 518, '2026-05-10', 'Delivered', 500.00, 'Cash'),

(1019, 519, '2026-05-10', 'Pending', 700.00, 'UPI'),

(1020, 520, '2026-05-11', 'Delivered', 2500.00, 'Card');



