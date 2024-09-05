-- 최종 테이블 & 더미

-- member 테이블
create sequence seq_member START WITH 1 INCREMENT BY 1 NOCYCLE;

create table member (
                        member_id number(10,0) not null,
                        roles varchar2(255) not null,
                        name varchar2(255) not null,
                        email varchar2(255) not null,
                        password varchar2(255) not null,
                        created_at timestamp,
                        updated_at timestamp
);

alter table member add constraint pk_member
    primary key (member_id);

-- member 데이터 추가

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw01', '황철원', 'hyunmin1711@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);


insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw02', '김준호', 'user02@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw03', '이서연', 'user03@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw04', '박지수', 'user04@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw05', '최예진', 'user05@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw06', '정민재', 'user06@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw07', '한지훈', 'user07@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw08', '김태현', 'user08@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw09', '유서아', 'user09@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw10', '노하준', 'user10@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw11', '조윤호', 'user11@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw12', '윤서진', 'user12@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw13', '이민준', 'user13@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw14', '박준희', 'user14@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw15', '최은우', 'user15@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw16', '정민서', 'user16@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw17', '한지원', 'user17@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw18', '김태민', 'user18@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw19', '유서현', 'user19@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw20', '노하람', 'user20@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw21', '조유진', 'user21@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw22', '윤지호', 'user22@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw23', '이수민', 'user23@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw24', '박준서', 'user24@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw25', '최하늘', 'user25@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw26', '정다비', 'user26@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw27', '한서우', 'user27@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw28', '김태리', 'user28@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw29', '유하은', 'user29@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw30', '노지민', 'user30@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw31', '조은지', 'user31@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw32', '윤하늘', 'user32@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw33', '이준호', 'user33@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw34', '박서진', 'user34@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw35', '최진우', 'user35@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw36', '정태준', 'user36@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw37', '한수현', 'user37@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw38', '김은우', 'user38@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw39', '유준혁', 'user39@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw40', '노하늬', 'user40@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw41', '조민규', 'user41@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw42', '윤소이', 'user42@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw43', '이하윤', 'user43@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw44', '박하린', 'user44@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw45', '최연수', 'user45@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw46', '정민규', 'user46@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw47', '한지애', 'user47@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw48', '김수현', 'user48@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw49', '유서진', 'user49@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, roles, created_at, updated_at)
values(next value for seq_member, 'pw50', '노민준', 'user50@gmail.com', 'ROLE_USER', current_timestamp, current_timestamp);


-- order 테이블
create sequence seq_orders START WITH 1 INCREMENT BY 1 NOCYCLE;

create table orders (
                        order_id number(10,0) not null,
                        member_id number(10,0) not null,
                        order_date timestamp,
                        constraint fk_orders_member_id foreign key(member_id) references member(member_id)
);

-- order 더미데이터

alter table orders add constraint pk_orders
    primary key (order_id);

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 1, TIMESTAMP '2023-09-01 14:35:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 2, TIMESTAMP '2023-08-24 09:20:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 3, TIMESTAMP '2023-08-05 16:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 4, TIMESTAMP '2023-08-11 11:15:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 5, TIMESTAMP '2023-08-18 19:05:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 6, TIMESTAMP '2023-08-30 08:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 7, TIMESTAMP '2023-08-02 10:10:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 8, TIMESTAMP '2023-09-01 13:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 9, TIMESTAMP '2023-08-15 12:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 10, TIMESTAMP '2023-08-25 15:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 11, TIMESTAMP '2023-08-17 14:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 12, TIMESTAMP '2023-08-08 09:15:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 13, TIMESTAMP '2023-08-22 20:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 14, TIMESTAMP '2023-08-13 18:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 15, TIMESTAMP '2023-08-03 11:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 16, TIMESTAMP '2023-08-27 17:25:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 17, TIMESTAMP '2023-08-19 12:50:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 18, TIMESTAMP '2023-08-09 14:10:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 19, TIMESTAMP '2023-08-29 08:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 20, TIMESTAMP '2023-08-01 10:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 21, TIMESTAMP '2023-08-12 16:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 22, TIMESTAMP '2023-08-23 14:20:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 23, TIMESTAMP '2023-08-04 15:10:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 24, TIMESTAMP '2023-08-14 17:40:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 25, TIMESTAMP '2023-08-26 12:25:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 26, TIMESTAMP '2023-08-16 09:50:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 27, TIMESTAMP '2023-08-07 18:15:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 28, TIMESTAMP '2023-08-28 13:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 29, TIMESTAMP '2023-08-20 11:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 30, TIMESTAMP '2023-08-10 16:20:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 31, TIMESTAMP '2023-08-21 09:10:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 32, TIMESTAMP '2023-08-06 17:35:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 33, TIMESTAMP '2023-08-31 12:00:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 34, TIMESTAMP '2023-08-02 15:25:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 35, TIMESTAMP '2023-08-31 18:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 36, TIMESTAMP '2023-08-03 14:15:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 37, TIMESTAMP '2023-08-24 10:50:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 38, TIMESTAMP '2023-08-05 19:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 39, TIMESTAMP '2023-08-11 08:20:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 40, TIMESTAMP '2023-08-18 12:55:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 41, TIMESTAMP '2023-08-30 16:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 42, TIMESTAMP '2023-08-01 13:45:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 43, TIMESTAMP '2023-08-15 20:10:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 44, TIMESTAMP '2023-08-25 11:25:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 45, TIMESTAMP '2023-08-17 15:30:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 46, TIMESTAMP '2023-08-08 18:40:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 47, TIMESTAMP '2023-08-22 09:05:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 48, TIMESTAMP '2023-08-13 17:15:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 49, TIMESTAMP '2023-08-03 12:20:00');

insert into orders(order_id, member_id, order_date)
values(next value for seq_orders, 50, TIMESTAMP '2023-08-27 14:35:00');


-- payment 테이블
create sequence seq_payment START WITH 1 INCREMENT BY 1 NOCYCLE;

create table payment (
                         order_id number(10,0) not null,
                         bank_name varchar2(255) not null,
                         card_number varchar2(255) not null,
                         rental_fee number(10,0) not null,
                         pay_date timestamp not null,
                         constraint fk_payment_order_id foreign key(order_id) references orders(order_id)
);

-- payment 더미데이터

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(1, '우리', '4578-1234-5678-9012', 34500, TIMESTAMP '2023-09-03 14:35:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(2, '국민', '5678-2345-6789-0123', 67300, TIMESTAMP '2023-08-24 09:20:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(3, '신한', '6789-3456-7890-1234', 15400, TIMESTAMP '2023-08-05 16:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(4, '농협', '7890-4567-8901-2345', 62000, TIMESTAMP '2023-08-11 11:15:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(5, '하나', '8901-5678-9012-3456', 23700, TIMESTAMP '2023-08-18 19:05:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(6, '우리', '9012-6789-0123-4567', 48900, TIMESTAMP '2023-08-30 08:00:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(7, '국민', '0123-7890-1234-5678', 15900, TIMESTAMP '2023-08-02 10:10:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(8, '신한', '1234-8901-2345-6789', 30100, TIMESTAMP '2023-09-01 13:00:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(9, '농협', '2345-9012-3456-7890', 76600, TIMESTAMP '2023-08-15 12:30:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(10, '하나', '3456-0123-4567-8901', 26400, TIMESTAMP '2023-08-25 15:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(11, '우리', '4567-8901-2345-6789', 45700, TIMESTAMP '2023-09-02 10:15:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(12, '신한', '5678-9012-3456-7890', 58900, TIMESTAMP '2023-08-21 12:47:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(13, '농협', '6789-0123-4567-8901', 19200, TIMESTAMP '2023-08-11 15:23:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(14, '하나', '7890-1234-5678-9012', 26300, TIMESTAMP '2023-09-01 14:56:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(15, '국민', '8901-2345-6789-0123', 41000, TIMESTAMP '2023-08-05 17:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(16, '우리', '9012-3456-7890-1234', 35700, TIMESTAMP '2023-08-16 11:30:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(17, '신한', '0123-4567-8901-2345', 77500, TIMESTAMP '2023-08-09 19:12:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(18, '농협', '1234-5678-9012-3456', 29000, TIMESTAMP '2023-08-14 16:08:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(19, '하나', '2345-6789-0123-4567', 33200, TIMESTAMP '2023-08-03 20:30:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(20, '국민', '3456-7890-1234-5678', 48100, TIMESTAMP '2023-08-28 18:05:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(21, '우리', '4567-8901-2345-6789', 54300, TIMESTAMP '2023-09-03 08:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(22, '신한', '5678-9012-3456-7890', 36800, TIMESTAMP '2023-08-22 11:22:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(23, '농협', '6789-0123-4567-8901', 62500, TIMESTAMP '2023-08-31 14:14:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(24, '하나', '7890-1234-5678-9012', 20800, TIMESTAMP '2023-08-24 13:37:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(25, '국민', '8901-2345-6789-0123', 45600, TIMESTAMP '2023-08-12 17:55:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(26, '우리', '9012-3456-7890-1234', 53900, TIMESTAMP '2023-08-08 12:12:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(27, '신한', '0123-4567-8901-2345', 47100, TIMESTAMP '2023-08-26 19:33:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(28, '농협', '1234-5678-9012-3456', 30800, TIMESTAMP '2023-08-15 10:10:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(29, '하나', '2345-6789-0123-4567', 62200, TIMESTAMP '2023-08-27 11:23:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(30, '국민', '3456-7890-1234-5678', 28400, TIMESTAMP '2023-08-18 15:00:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(31, '우리', '4567-8901-2345-6789', 51700, TIMESTAMP '2023-08-29 14:15:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(32, '신한', '5678-9012-3456-7890', 67900, TIMESTAMP '2023-08-17 13:20:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(33, '농협', '6789-0123-4567-8901', 45000, TIMESTAMP '2023-08-10 12:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(34, '하나', '7890-1234-5678-9012', 34600, TIMESTAMP '2023-08-13 10:30:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(35, '국민', '8901-2345-6789-0123', 59800, TIMESTAMP '2023-08-06 16:40:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(36, '우리', '9012-3456-7890-1234', 31000, TIMESTAMP '2023-08-25 18:25:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(37, '신한', '0123-4567-8901-2345', 65000, TIMESTAMP '2023-08-07 17:10:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(38, '농협', '1234-5678-9012-3456', 36500, TIMESTAMP '2023-08-14 11:55:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(39, '하나', '2345-6789-0123-4567', 24300, TIMESTAMP '2023-08-09 09:30:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(40, '국민', '3456-7890-1234-5678', 41000, TIMESTAMP '2023-08-02 14:20:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(41, '우리', '4567-8901-2345-6789', 23700, TIMESTAMP '2023-08-31 12:45:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(42, '신한', '5678-9012-3456-7890', 65200, TIMESTAMP '2023-08-23 15:50:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(43, '농협', '6789-0123-4567-8901', 51800, TIMESTAMP '2023-08-19 18:05:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(44, '하나', '7890-1234-5678-9012', 37900, TIMESTAMP '2023-08-01 16:00:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(45, '국민', '8901-2345-6789-0123', 49200, TIMESTAMP '2023-08-04 10:25:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(46, '우리', '9012-3456-7890-1234', 27700, TIMESTAMP '2023-08-28 13:40:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(47, '신한', '0123-4567-8901-2345', 48600, TIMESTAMP '2023-08-20 19:15:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(48, '농협', '1234-5678-9012-3456', 34600, TIMESTAMP '2023-08-11 15:50:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(49, '하나', '2345-6789-0123-4567', 22700, TIMESTAMP '2023-08-16 14:10:00');

insert into payment(order_id, bank_name, card_number, rental_fee, pay_date)
values(50, '국민', '3456-7890-1234-5678', 75800, TIMESTAMP '2023-08-03 11:25:00');


-- product 테이블
create sequence seq_product START WITH 1 INCREMENT BY 1 NOCYCLE;

create table product (
                         product_id number(10,0) not null,
                         model_code varchar2(255) not null,
                         model_name varchar2(255) not null,
                         order_fee number(10,0) not null,
                         product_size varchar2(255) not null,
                         product_period varchar2(255) not null,
                         product_capacity varchar2(255) not null,
                         product_power varchar2(255) not null,
                         product_release varchar2(255) not null,
                         product_funtion varchar2(255) not null,
                         product_weight varchar2(255) not null,
                         product_method varchar2(255) not null,
                         product_install varchar2(255) not null,
                         manufacturer varchar2(255) not null,
                         created_at timestamp not null,
                         updated_at timestamp not null
);

alter table product add constraint pk_product
    primary key (product_id);

-- product 더미데이터

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-5711L', '워터스탠드 정수기2', 300000,
                 '260*448*1150', '1회/2개월, 1회/4개월', '냉수 3.0L, 온수 3.0L, 정수 6.0L',
                 '220 V / 60 ㎐', '2024년 3월', '온도 표시부', '24kg', '탱크형',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-6340L', '엘리트 정수기', 300000,
                 '260*494*507.4mm', '1회/2개월', '냉수 2.3L 정수 2.5L',
                 '냉수 0.6A', '2023년 7월', '맞춤/연속 추출, MY용량, 절전모드', '14.5kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-5720L', '프라임 스탠드', 239000,
                 '320x490x1260mm', '1회/2개월, 1회/4개월', '냉수 7.1L, 온수 3.6L, 정 10.4L',
                 '냉수 0.7A, 온수 550W', '2022년 12월', '맞춤/연속 추출, 파우셋 UV 살균, 탱크 UV 살균, 절전모드', '33kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-7211N', '아이콘 정수기 2', 312000,
                 '180x340x385mm', '방문관리: 1회/4개월 ,자가관리: 1회/6개월', '냉수 1.0L, 정수 직수',
                 '냉수 0.5A', '2022년 6월', '초고온수, 파우셋 원터치 교체, UV파우셋살균, MY 용량/온도 기능, 스마트 원격 진단, 음성 지원, 스마트 필터 모니터링', '6.6kg', '정수(직수식)',
                 '데스크탑', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHPI-5810L', '프라임 아이스 맥스', 532000,
                 '395x580x1,390mm', '1회/2개월 1회/4개월', '냉수 6.0 L, 온수 3.5 L, 정수 6.5 L, 얼음 3.8 kg',
                 '냉수 0.7A, 온수 550W, 제빙 90W', '2022년 6월', '맞춤/연속 추출, 듀얼 냉각 기능, 얼음우선모드, 절전모드, 유로 살균(EW), 파우셋 UV살균, 아이스룸 UV살균, IoCare기능', '46.6kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-8310L', '노블 정수기 RO', 723000,
                 '230x440x400mm', '1회/6개월', '냉수 1.0L, 정수 2.0L',
                 '냉수 0.7A', '2022년 1월', '무빙파우셋, UV파우세살균, 자동배수, 자동 컵감지 센서, MY용량기능, 스마트진단, 음성지원기능, 스마트 필터 모니터링', '10.8kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-3140N', '노블 빌트인 정수기', 426000,
                 '파우셋 : 56x89x315mm 본체 : 164x410x430mm', '1회/6개월', '냉수 : 직수(빙축열), 정수 : 직수',
                 '냉수 0.6A', '2021년 10월', '스마트모션파우셋, UV파우셋살균, EW유로살균, 유로자동비움, 컵감지 센서, MY용량, 스마트진단, 음성안내', '13.9kg', '정수(직수식) 냉수(순간냉각직수식)',
                 '언더싱크', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-8210N', '노블 정수기 가로', 845000,
                 '320x185x385mm', '1회/6개월', '냉수 1L',
                 '냉수 0.5A 온수 2,900W', '2021년 10월', '무빙파우셋, UV파우세살균, 자동배수 기능, 컵감지 센서, MY용량기능, 스마트진단, 음성지원기능', '13.9kg', '온수(순간가열 직수식), 정수(직수식)',
                 '데스크탑', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-8200N', '노블 정수기 세로', 534000,
                 '180x300x385mm', '1회/6개월', '냉수:1.0L, 온수, 정수:직수',
                 '냉수 0.5A', '2021년 10월', '스마트모션파우셋, UV파우셋살균, 유로자동비움, 컵감지 센서, MY용량, 스마트진단, 음성안내', '7.2kg', '정수(직수식)',
                 '데스크탑', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-5610N', '아이콘 스탠드', 534000,
                 '260x493x1,283mm', '1회/6개월', '냉수 2.3 L, 정수 직수, 온수 2.6L',
                 '냉수 0.5 A, 온수 500 W', '2021년 10월', '스마트진단, 맞춤추출, 연속추출, 온수잠금', '35.6kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'P-6320L', '프라임 베이직', 412000,
                 '200x400x405 mm', '1회/2개월', '냉수 2.3 L, 정수 직수, 온수 2.6L',
                 '냉수 0.5 A, 온수 500 W', '2021년 5월', '맞춤 추출, 연속 추출', '5.5kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CPI-7511L', 'AIS(아이스) 3.0', 623000,
                 '270x530x515mm', '1회/2개월', '냉수 1.8 L, 정수 1.8 L, 얼음 0.4 kg',
                 '냉수 0.8 A, 제빙 150 W, 탈빙 150 W', '2021년 4월', '맞춤 추출, 연속 추출', '21.8kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CPSI-8510L', 'AIS(아이스) 3.0 스파클링', 433000,
                 '350x550x515mm', '1회/2개월', '냉수 1.6 L, 정수 2.5 L, 얼음 0.4 kg',
                 '냉수 0.7 A(탄산수 제조 시 1.1 A), 제빙 120 W, 탈빙 150 W', '2020년 5월', '탄산수 제조, 듀얼냉각 시스템, 맞춤 추출, UV 기능, 과냉 방지 기능', '29.5kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'P-350N', '나노직수 미니', 234000,
                 '130x402x308mm', '1회/6개월', '냉수 1.6 L, 정수 2.5 L, 얼음 0.4 kg',
                 '냉수 0.7 A(탄산수 제조 시 1.1 A), 제빙 120 W, 탈빙 150 W', '2021년 11월', '연속추출, 원터치 필터 교체', '3.3 kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );
insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-5710R', '워터 스탠드', 368000,
                 '260x448x1150mm', '1회 / 2개월, 1회 / 4개월', '냉수 3.0 L, 온수 3.0 L, 정수 6.0 L',
                 '냉수 0.55A, 온수 500W', '2019년 4월', '온도 표시부', '25.0 kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-5700R', 'RO 직수 스탠드', 368000,
                 '310x490x1,257mm', '1회/2개월', '냉수 7.0L , 온수 3.6L',
                 '냉수 1.0 A, 온수 550 W', '2018년 8월', '맞춤 추출, 연속 추출, 서비스점검주기 알람, 절전 기능', '37.3kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'P-150N', '빌트인 정수기', 168000,
                 '150x400x333mm', '1회/6개월', '냉수 7.0L , 온수 3.6L',
                 '냉수 1.0 A, 온수 550 W', '2018년 8월', '맞춤 추출, 연속 추출', '3.5kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );


insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHPI-5801L', '아이스 스탠드', 368000,
                 '360x540x1,352mm', '1회/6개월', '냉수 5.0 L, 온수 3.5 L, 정수 6.5 L, 얼음 3.0 kg',
                 '냉수 1.05 A 제빙 150 W, 온수 550 W, 탈빙 150 W', '2018년 7월', '듀얼 냉각 기능, 얼음우선모드, 맞춤 추출, 절전기능, 순환배수', '3.5kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CP-6310L', '프라임 2.0', 478000,
                 '260x483x510mm', '1회/2개월', '냉수 2.5 L, 정수 2.5 L',
                 '냉수 0.5 A', '2018년 7월', '맞춤 추출, 냉수플러스 기능', '16.3kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHPI-620L', '아이스 스탠드 슬림', 478000,
                 '300x500x1,291mm', '1회/2개월', '냉수 2.5 L, 온수 1.5 L, 정수 3.5 L, 얼음 1.0 kg',
                 '냉수 1.1 A, 온수 310 W', '2016년 8월', '분리형 얼음 트레이, 와이드 트레이, 점검 알림', '35.2kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-264L', '프라임 1.0', 478000,
                 '260x505x500mm', '1회/2개월', '냉수 2.5 L, 온수 1.5 L, 정수 3.5 L, 얼음 1.0 kg',
                 '냉수 1.1 A, 온수 310 W', '2016년 7월', '2-Way 파우셋, 연속추출, 분리형 파우셋, 온수안전, 절전', '18.0kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CHP-700L', '스탠드 정수', 498000,
                 '440x510x1250mm', '1회/2개월', '냉수 16.0 L, 온수 3.5 L, 정수 14.0 L',
                 '냉수 1.1 A, 온수 550 W', '2010년 1월', '2-Way 파우셋, 연속 추출, 분리형 파우셋, 온수안전', '41.8kg', '정수(직수식)',
                 '스탠드형', '코웨이', current_timestamp, current_timestamp
        );

insert into product (
    product_id, model_code, model_name, order_fee, product_size, product_period, product_capacity,
    product_power, product_release, product_funtion, product_weight, product_method,
    product_install, manufacturer, created_at, updated_at
) values(
            next value for seq_product,
                 'CPI-7400N', '아이콘 얼음정수기', 618000,
                 '240x473x465mm', '기본형: 1회/4개월 강화형: 1회/2개월', '냉수 1.0 L, 얼음 0.74 kg',
                 '냉수: 0.7 A, 제빙: 80 W', '2024년 4월', '듀얼냉각시스템, 파동제빙, 초고온수, UV파우셋살균, 맞춤 용량/온도, 스마트 원격 진단, 음성 지원', '16.1kg', '정수(직수식)',
                 '데스크탑형', '코웨이', current_timestamp, current_timestamp
        );


-- image 테이블
create sequence seq_image START WITH 1 INCREMENT BY 1 NOCYCLE;

create table image (
                       image_id number(10,0) not null,
                       product_id number(10,0) not null,
                       folder_path varchar2(3000) not null,
                       file_name varchar2(2000) not null,
                       constraint fk_image_product_id foreign key(product_id) references product(product_id)
);

alter table image add constraint pk_image
    primary key (image_id);

-- image 더미데이터

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 1, '/resources/img/service/products', '/product01.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 2, '/resources/img/service/products', '/product02.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 3, '/resources/img/service/products', '/product03.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 4, '/resources/img/service/products', '/product04.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 5, '/resources/img/service/products', '/product05.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 6, '/resources/img/service/products', '/product06.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 7, '/resources/img/service/products', '/product07.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 8, '/resources/img/service/products', '/product08.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 9, '/resources/img/service/products', '/product09.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 10, '/resources/img/service/products', '/product10.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 11, '/resources/img/service/products', '/product11.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 12, '/resources/img/service/products', '/product12.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 13, '/resources/img/service/products', '/product13.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 14, '/resources/img/service/products', '/product14.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 15, '/resources/img/service/products', '/product15.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 16, '/resources/img/service/products', '/product16.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 17, '/resources/img/service/products', '/product17.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 18, '/resources/img/service/products', '/product18.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 19, '/resources/img/service/products', '/product19.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 20, '/resources/img/service/products', '/product20.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 21, '/resources/img/service/products', '/product21.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 22, '/resources/img/service/products', '/product22.png');

insert into image (image_id, product_id, folder_path, file_name)
values(next value for seq_image, 23, '/resources/img/service/products', '/product23.png');


-- order_product 테이블
create sequence seq_order_product START WITH 1 INCREMENT BY 1 NOCYCLE;

create table order_product (
                               order_product_id number(10,0) not null,
                               order_id number(10,0) not null,
                               product_id number(10,0) not null,
                               contract_deadline varchar2(255) not null,
                               recipient_name varchar2(255) not null,
                               recipient_phoneno varchar2(255) not null,
                               postcode varchar2(255) not null,
                               address varchar2(255) not null,
                               wish_date varchar2(255) not null,
                               order_state varchar2(255) not null,
                               automatic_transfer_date number(10) not null,
                               constraint fk_order_product_order_id foreign key(order_id) references orders(order_id),
                               constraint fk_order_product_product_id foreign key(product_id) references product(product_id)
);

alter table order_product add constraint pk_order_product
    primary key (order_product_id);

-- order_product 더미데이터

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 1, 1, '12', '김철수', '010-1234-5678', '12345', '서울특별시 양천구 목동', '2024-09-03', '주문완료', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 2, 2, '24', '이영희', '010-2345-6789', '67890', '부산광역시 해운대구 중동', '2024-09-15', '배송대기', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 3, 3, '36', '박준호', '010-3456-7890', '13579', '인천광역시 남동구 구월동', '2024-09-08', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 4, 4, '12', '최민수', '010-4567-8901', '24680', '대구광역시 수성구 범어동', '2024-09-12', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 5, 5, '24', '정은지', '010-5678-0123', '13579', '울산광역시 중구 다운동', '2024-09-18', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 6, 6, '36', '한미라', '010-6789-1234', '32568', '대전광역시 유성구 궁동', '2024-09-10', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 7, 7, '12', '김태연', '010-7890-2345', '40567', '광주광역시 서구 치평동', '2024-09-22', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 8, 8, '24', '조경진', '010-8901-3456', '56789', '세종특별자치시 보람동', '2024-09-05', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 9, 9, '36', '윤서아', '010-9012-4567', '67890', '제주특별자치도 제주시 이도동', '2024-09-17', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 10, 10, '12', '손흥민', '010-0123-5678', '78901', '충청북도 청주시 상당구', '2024-09-09', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 11, 11, '24', '이강인', '010-1234-6789', '89012', '충청남도 아산시 탕정면', '2024-09-20', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 12, 12, '36', '황의조', '010-2345-7890', '90123', '경상북도 경산시 중방동', '2024-09-02', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 13, 13, '12', '김민재', '010-3456-8901', '01234', '경상남도 창원시 성산구', '2024-09-13', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 14, 14, '24', '정우영', '010-4567-9012', '12345', '전라북도 전주시 덕진구', '2024-09-27', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 15, 15, '36', '박지성', '010-5678-0123', '23456', '전라남도 목포시 옥암동', '2024-09-01', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 16, 16, '12', '이청용', '010-6789-1234', '34567', '경기도 수원시 장안구', '2024-09-11', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 17, 17, '24', '황희찬', '010-7890-2345', '45678', '강원도 춘천시 소양로', '2024-09-23', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 18, 18, '36', '조현우', '010-8901-3456', '56789', '서울특별시 강남구 삼성동', '2024-09-06', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 19, 19, '12', '김영권', '010-9012-4567', '67890', '인천광역시 연수구 송도동', '2024-09-16', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 20, 20, '24', '이동국', '010-0123-5678', '78901', '대전광역시 동구 가양동', '2024-09-07', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 21, 12, '36', '손준호', '010-1234-6789', '89012', '광주광역시 북구 운암동', '2024-09-19', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 22, 13, '12', '박주영', '010-2345-7890', '90123', '세종특별자치시 조치원읍', '2024-09-12', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 23, 15, '24', '유상철', '010-3456-8901', '01234', '제주특별자치도 서귀포시 중문동', '2024-09-21', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 24, 12, '36', '이운재', '010-4567-9012', '12345', '충청북도 제천시 청전동', '2024-09-25', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 25, 8, '12', '권창훈', '010-5678-0123', '23456', '충청남도 천안시 동남구', '2024-09-04', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 26, 4, '24', '조원희', '010-6789-1234', '34567', '경기도 고양시 일산동구', '2024-09-14', '주문완료', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 27, 3, '36', '김진수', '010-7890-2345', '45678', '강원도 원주시 단계동', '2024-09-26', '배송중', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 28, 9, '12', '이천수', '010-8901-3456', '56789', '서울특별시 중구 신당동', '2024-09-11', '기사배정중', 20);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 29, 12, '24', '홍명보', '010-9012-4567', '67890', '인천광역시 남동구 논현동', '2024-09-24', '배송대기', 10);

insert into order_product (order_product_id, order_id, product_id, contract_deadline, recipient_name, recipient_phoneno, postcode, address, wish_date, order_state, automatic_transfer_date)
values (next value for seq_order_product, 30, 15, '36', '김병지', '010-0123-5678', '78901', '대전광역시 서구 가수원동', '2024-09-28', '주문완료', 20);


-- charge 테이블

create sequence seq_charge START WITH 1 INCREMENT BY 1 NOCYCLE;

create table charge (
                        charge_id number(10,0) not null,
                        order_product_id number(10,0) not null,
                        charge_count number(10,0) not null,
                        remaining_count number(10,0) not null,
                        charge_date timestamp,
                        constraint fk_charge_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

alter table charge add constraint pk_charge
    primary key (charge_id);

-- charge 더미 데이터

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 1, 1, 2, TIMESTAMP '2023-09-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 1, 2, 1, TIMESTAMP '2023-10-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 1, 3, 0, TIMESTAMP '2023-11-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 2, 1, 2, TIMESTAMP '2023-09-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 2, 2, 1, TIMESTAMP '2023-10-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 2, 3, 0, TIMESTAMP '2023-11-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 3, 1, 2, TIMESTAMP '2023-09-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 3, 2, 1, TIMESTAMP '2023-10-01 00:00:00');

insert into charge (charge_id, order_product_id, charge_count, remaining_count, charge_date)
values (next value for seq_charge, 3, 3, 0, TIMESTAMP '2023-11-01 00:00:00');

-- engineer 테이블

create sequence seq_engineer START WITH 1 INCREMENT BY 1 NOCYCLE;

create table engineer (
                          engineer_id number(10,0) not null,
                          engineer_name varchar2(255) not null,
                          engineer_position varchar2(255) not null
);

alter table engineer add constraint pk_engineer
    primary key (engineer_id);

-- engineer 더미 데이터

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '김상학', '주임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '이준혁', '선임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '박서준', '팀장');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '최민수', '대리');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '정효진', '주임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '강유미', '선임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '유재석', '팀장');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '손흥민', '대리');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '황희찬', '주임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '김연아', '선임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '박지성', '팀장');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '이승엽', '대리');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '황정민', '주임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '김수현', '선임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '전지현', '팀장');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '류현진', '대리');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '이경규', '주임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '이영애', '선임');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '장동건', '팀장');

insert into engineer (engineer_id, engineer_name, engineer_position)
values(next value for seq_engineer, '하정우', '대리');

-- check 테이블

create table checks (
                        engineer_id number(10,0) not null,
                        order_product_id number(10,0) not null,
                        check_date timestamp not null,
                        constraint fk_checks_engineer_id foreign key(engineer_id) references engineer(engineer_id),
                        constraint fk_checks_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

-- check 더미 데이터

insert into checks (engineer_id, order_product_id, check_date)
values(1, 1, TIMESTAMP '2024-01-10 10:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(2, 2, TIMESTAMP '2024-01-11 11:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(3, 3, TIMESTAMP '2024-01-12 12:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(4, 4, TIMESTAMP '2024-01-13 13:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(5, 5, TIMESTAMP '2024-01-14 14:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(6, 6, TIMESTAMP '2024-01-15 15:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(7, 7, TIMESTAMP '2024-01-16 16:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(8, 8, TIMESTAMP '2024-01-17 17:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(9, 9, TIMESTAMP '2024-01-18 18:00:00');

insert into checks (engineer_id, order_product_id, check_date)
values(10, 10, TIMESTAMP '2024-01-19 19:00:00');

create sequence seq_return START WITH 1 INCREMENT BY 1 NOCYCLE;

create table return (
                        return_id number(10,0) not null,
                        order_product_id number(10,0) not null,
                        collection_date timestamp not null,
                        return_status varchar2(255) not null,
                        constraint fk_return_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

alter table return add constraint pk_return
    primary key (return_id);

insert into return (return_id, order_product_id, collection_date, return_status)
values(next value for seq_return, 1, current_timestamp, '구독 해지');