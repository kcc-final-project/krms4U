-- member
create sequence seq_member START WITH 1 INCREMENT BY 1 NOCYCLE;

create table member (
  member_id number(10,0) not null,
  password varchar2(255) not null,
  name varchar2(255) not null,
  email varchar2(255) not null,
  phoneno varchar2(255) not null,
  roles varchar2(255) not null,
  postcode varchar2(255) not null,
  address varchar2(255) not null,
  detailaddress varchar2(255) not null,
  created_at timestamp,
  updated_at timestamp
);

alter table member add constraint pk_member 
primary key (member_id);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
  values(next value for seq_member, 'pw01', '황철원', 'user01@gmail.com', '010-1234-5678', 'ROLE_USER', '03077', '서울 종로구 창경궁로 254', '명륜2가 41-4', current_timestamp, current_timestamp);
  
-- order
create sequence seq_orders START WITH 1 INCREMENT BY 1 NOCYCLE;

create table orders (
  order_id number(10,0) not null,
  member_id number(10,0) not null,
  order_state varchar2(255) not null,
  created_at timestamp,
  constraint fk_orders_member_id foreign key(member_id) references member(member_id)
);

alter table orders add constraint pk_orders
primary key (order_id);

insert into orders(order_id, member_id, order_state, created_at)
values(next value for seq_orders, 1, '주문완료', current_timestamp);
  

-- payment
create sequence seq_payment START WITH 1 INCREMENT BY 1 NOCYCLE;

create table payment (
  order_id number(10,0) not null,
  payment_method varchar2(255),
  rental_fee number(10,0),
  regular_pay timestamp,
  constraint fk_payment_order_id foreign key(order_id) references orders(order_id)
);

insert into payment (order_id, payment_method, rental_fee, regular_pay)
  values(next value for seq_payment, '카드', 25600, current_timestamp);

-- product;
create sequence seq_product START WITH 1 INCREMENT BY 1 NOCYCLE;

create table product (
    product_id number(10,0) not null,
    product_name varchar2(255) not null,
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
    product_color varchar2(255) not null,
    order_fee number(10,0) not null
);

alter table product add constraint pk_product
primary key (product_id);

insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-5711L', 
'260*448*1150', 
'1회/2개월, 1회/4개월', 
'냉수 3.0L, 온수 3.0L, 정수 6.0L', 
'220 V / 60 ㎐',
'2024년 3월', 
'온도 표시부', 
'24kg', 
'탱크형', 
'스탠드형',  
'코웨이', 
'블랙', 
300000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-6340L', 
'260*494*507.4mm', 
'1회/2개월', 
'냉수 2.3L 정수 2.5L', 
'냉수 0.6A',
'2023년 7월', 
'맞춤/연속 추출, MY용량, 절전모드', 
'14.5kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'포슬린 화이트', 
300000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-5720L', 
'320x490x1260mm', 
'1회/2개월, 1회/4개월', 
'냉수 7.1L, 온수 3.6L, 정 10.4L', 
'냉수 0.7A, 온수 550W',
'2022년 12월', 
'맞춤/연속 추출, 파우셋 UV 살균, 탱크 UV 살균, 절전모드', 
'33kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'오트밀 베이지', 
239000); 



insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-7211N', 
'180x340x385mm', 
'방문관리: 1회/4개월 ,자가관리: 1회/6개월', 
'냉수 1.0L, 정수 직수', 
'냉수 0.5A',
'2022년 6월', 
'초고온수, 파우셋 원터치 교체, UV파우셋살균, MY 용량/온도 기능, 스마트 원격 진단, 음성 지원, 스마트 필터 모니터링', 
'6.6kg', 
'정수(직수식)', 
'데스크탑',  
'코웨이', 
'스노우 화이트', 
312000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHPI-5810L', 
'395x580x1,390mm', 
'1회/2개월 1회/4개월', 
'냉수 6.0 L, 온수 3.5 L, 정수 6.5 L, 얼음 3.8 kg', 
'냉수 0.7A, 온수 550W, 제빙 90W',
'2022년 6월', 
'맞춤/연속 추출, 듀얼 냉각 기능, 얼음우선모드, 절전모드, 유로 살균(EW), 파우셋 UV살균, 아이스룸 UV살균, IoCare기능', 
'46.6kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'미스티 딥 그레이', 
532000); 

insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-8310L', 
'230x440x400mm', 
'1회/6개월', 
'냉수 1.0L, 정수 2.0L', 
'냉수 0.7A',
'2022년 1월', 
'무빙파우셋, UV파우세살균, 자동배수, 자동 컵감지 센서, MY용량기능, 스마트진단, 음성지원기능, 스마트 필터 모니터링', 
'10.8kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'브론즈 베이지', 
723000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-3140N', 
'파우셋 : 56x89x315mm 본체 : 164x410x430mm', 
'1회/6개월', 
'냉수 : 직수(빙축열), 정수 : 직수', 
'냉수 0.6A',
'2021년 10월', 
'스마트모션파우셋, UV파우셋살균, EW유로살균, 유로자동비움, 컵감지 센서, MY용량, 스마트진단, 음성안내', 
'13.9kg', 
'정수(직수식) 냉수(순간냉각직수식)', 
'언더싱크',  
'코웨이', 
'미드나잇 네이비', 
426000); 



insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-8210N', 
'320x185x385mm', 
'1회/6개월', 
'냉수 1L', 
'냉수 0.5A 온수 2,900W',
'2021년 10월', 
'무빙파우셋, UV파우세살균, 자동배수 기능, 컵감지 센서, MY용량기능, 스마트진단, 음성지원기능', 
'13.9kg', 
'온수(순간가열 직수식), 정수(직수식)', 
'데스크탑',  
'코웨이', 
'브론즈 베이지', 
845000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-8200N', 
'180x300x385mm', 
'1회/6개월', 
'냉수:1.0L, 온수, 정수:직수', 
'냉수 0.5A',
'2021년 10월', 
'스마트모션파우셋, UV파우셋살균, 유로자동비움, 컵감지 센서, MY용량, 스마트진단, 음성안내', 
'7.2kg', 
'정수(직수식)', 
'데스크탑',  
'코웨이', 
'마호가니 브라운', 
534000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-5610N', 
'260x493x1,283mm', 
'1회/6개월', 
'냉수 2.3 L, 정수 직수, 온수 2.6L', 
'냉수 0.5 A, 온수 500 W',
'2021년 10월', 
'스마트진단, 맞춤추출, 연속추출, 온수잠금', 
'35.6kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'미스티 그레이', 
534000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'P-6320L', 
'200x400x405 mm', 
'1회/2개월', 
'냉수 2.3 L, 정수 직수, 온수 2.6L', 
'냉수 0.5 A, 온수 500 W',
'2021년 5월', 
'맞춤 추출, 연속 추출', 
'5.5kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'오트밀 베이지', 
412000); 

insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CPI-7511L', 
'270x530x515mm', 
'1회/2개월', 
'냉수 1.8 L, 정수 1.8 L, 얼음 0.4 kg', 
'냉수 0.8 A, 제빙 150 W, 탈빙 150 W',
'2021년 4월', 
'맞춤 추출, 연속 추출', 
'21.8kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'미스티그레이', 
623000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CPSI-8510L', 
'350x550x515mm', 
'1회/2개월', 
'냉수 1.6 L, 정수 2.5 L, 얼음 0.4 kg', 
'냉수 0.7 A(탄산수 제조 시 1.1 A), 제빙 120 W, 탈빙 150 W',
'2020년 5월', 
'탄산수 제조, 듀얼냉각 시스템, 맞춤 추출, UV 기능, 과냉 방지 기능', 
'29.5kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'미스티그레이', 
433000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'P-350N', 
'130x402x308mm', 
'1회/6개월', 
'냉수 1.6 L, 정수 2.5 L, 얼음 0.4 kg', 
'냉수 0.7 A(탄산수 제조 시 1.1 A), 제빙 120 W, 탈빙 150 W',
'2021년 11월', 
'연속추출, 원터치 필터 교체', 
'3.3 kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'실버', 
234000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-5710R', 
'260x448x1150mm', 
'1회 / 2개월, 1회 / 4개월', 
'냉수 3.0 L, 온수 3.0 L, 정수 6.0 L', 
'냉수 0.55A, 온수 500W',
'2019년 4월', 
'온도 표시부', 
'25.0 kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'화이트', 
368000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-5700R', 
'310x490x1,257mm', 
'1회/2개월', 
'냉수 7.0L , 온수 3.6L', 
'냉수 1.0 A, 온수 550 W',
'2018년 8월', 
'맞춤 추출, 연속 추출, 서비스점검주기 알람, 절전 기능', 
'37.3kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'화이트', 
368000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'P-150N', 
'150x400x333mm', 
'1회/6개월', 
'냉수 7.0L , 온수 3.6L', 
'냉수 1.0 A, 온수 550 W',
'2018년 8월', 
'맞춤 추출, 연속 추출', 
'3.5kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'화이트', 
168000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHPI-5801L', 
'360x540x1,352mm', 
'1회/6개월', 
'냉수 5.0 L, 온수 3.5 L, 정수 6.5 L, 얼음 3.0 kg', 
'냉수 1.05 A 제빙 150 W, 온수 550 W, 탈빙 150 W',
'2018년 7월', 
'듀얼 냉각 기능, 얼음우선모드, 맞춤 추출, 절전기능, 순환배수', 
'3.5kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'블랙,화이트', 
368000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CP-6310L', 
'260x483x510mm', 
'1회/2개월', 
'냉수 2.5 L, 정수 2.5 L', 
'냉수 0.5 A',
'2018년 7월', 
'맞춤 추출, 냉수플러스 기능', 
'16.3kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'블랙,화이트', 
478000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHPI-620L', 
'300x500x1,291mm', 
'1회/2개월', 
'냉수 2.5 L, 온수 1.5 L, 정수 3.5 L, 얼음 1.0 kg', 
'냉수 1.1 A , 온수 310 W',
'2016년 8월', 
'분리형 얼음 트레이, 와이드 트레이, 점검 알림', 
'35.2kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'블랙,화이트', 
478000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-264L', 
'260x505x500mm', 
'1회/2개월', 
'냉수 2.5 L, 온수 1.5 L, 정수 3.5 L, 얼음 1.0 kg', 
'냉수 1.1 A , 온수 310 W',
'2016년 7월', 
'2-Way 파우셋, 연속추출, 분리형 파우셋, 온수안전, 절전', 
'18.0kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'실버,화이트', 
478000); 



insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CHP-700L', 
'440x510x1250mm', 
'1회/2개월', 
'냉수 16.0 L, 온수 3.5 L, 정수 14.0 L', 
'냉수 1.1 A, 온수 550 W',
'2010년 1월', 
'2-Way 파우셋, 연속 추출, 분리형 파우셋, 온수안전', 
'41.8kg', 
'정수(직수식)', 
'스탠드형',  
'코웨이', 
'화이트', 
498000); 


insert into product (product_id, product_name, product_size, product_period, product_capacity, product_power, product_release, product_funtion, product_weight, product_method, product_install, manufacturer, product_color, order_fee) values(
next value for seq_product, 
'CPI-7400N', 
'240x473x465mm', 
'기본형: 1회/4개월 강화형: 1회/2개월', 
'냉수 1.0 L, 얼음 0.74 kg', 
'냉수: 0.7 A, 제빙: 80 W',
'2024년 4월', 
'듀얼냉각시스템, 파동제빙, 초고온수, UV파우셋살균, 맞춤 용량/온도, 스마트 원격 진단, 음성 지원', 
'16.1kg', 
'정수(직수식)', 
'데스크탑형',  
'코웨이', 
'아이스 그레이', 
618000); 


-- order_product
create sequence seq_order_product START WITH 1 INCREMENT BY 1 NOCYCLE;

create table order_product (
    order_product_id number(10,0) not null,
    order_id number(10,0) not null,
    product_id number(10,0) not null,
    product_state varchar2(255) not null,
    wish_date varchar2(255) not null,
    postcode varchar2(255) not null,
    address varchar2(255) not null,
    recipient varchar2(255) not null,
    recipient_phoneno varchar2(255) not null,
    rental_period varchar2(255) not null,
    rental_amount varchar2(255) not null,
    claiming_status number(1) not null,
    order_date timestamp,
    constraint fk_order_product_order_id foreign key(order_id) references orders(order_id),
    constraint fk_order_product_product_id foreign key(product_id) references product(product_id)
);

alter table order_product add constraint pk_order_product
primary key (order_product_id);

insert into order_product (order_product_id, order_id, product_id, product_state, wish_date, postcode, address, recipient, recipient_phoneno,
			rental_period, rental_amount, claiming_status, order_date)
values(next value for seq_order_product, 1, 1, '배송중', '24/08/30', '03077', '서울 종로구 창경궁로 254', '황철원', '010-7890-1112', '6년약정', 1, 1, current_timestamp);

-- return
create sequence seq_return START WITH 1 INCREMENT BY 1 NOCYCLE;

create table return (
    return_id number(10,0) not null,
    order_product_id number(10,0) not null,
    collection_date timestamp,
    return_time timestamp,
    return_state number(1) not null,
    constraint fk_orpr_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

alter table return add constraint pk_return
primary key (return_id);

insert into return (return_id, order_product_id, collection_date, return_time, return_state)
values(next value for seq_return, 1, current_timestamp, current_timestamp, 1);

-- charge
create sequence seq_charge START WITH 1 INCREMENT BY 1 NOCYCLE;

create table charge (
    charge_id number(10,0) not null,
    order_product_id number(10,0) not null,
    amount number(10,0) not null,
    charge_amount number(10,0) not null,
    charge_at timestamp,
    claim_type varchar2(255) not null,
    constraint fk_charge_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

alter table charge add constraint pk_charge
primary key (charge_id);

insert into charge (charge_id, order_product_id, amount, charge_amount, charge_at, claim_type)
values(next value for seq_charge, 1, 1, 1, current_timestamp, '렌탈료');

-- engineer
create sequence seq_engineer START WITH 1 INCREMENT BY 1 NOCYCLE;

create table engineer (
    engineer_id number(10,0) not null,
    engineer_name varchar2(255) not null,
    engineer_position varchar2(255) not null
);

alter table engineer add constraint pk_engineer
primary key (engineer_id);

insert into engineer (engineer_id, engineer_name, engineer_position) 
values(next value for seq_engineer, '김상학', '주임');

-- check
create table checks (
    engineer_id number(10,0) not null,
    order_product_id number(10,0) not null,
    engineer_group varchar2(255) not null,
    constraint fk_checks_engineer_id foreign key(engineer_id) references engineer(engineer_id),
    constraint fk_checks_order_product_id foreign key(order_product_id) references order_product(order_product_id)
);

insert into checks (engineer_id, order_product_id, engineer_group) 
values(1, 1, '서비스 1팀');

-- rate_plan
create sequence seq_rate_plan START WITH 1 INCREMENT BY 1 NOCYCLE;

create table rate_plan (
    rate_plan_id number(10,0) not null,
    product_id number(10,0) not null,
    prepayment_cycle varchar2(255) not null,
    contract_period varchar2(255) not null,
    registration_fee number(10,0) not null,
    rental_fee number(10,0) not null,
    constraint fk_rate_plan_product_id foreign key(product_id) references product(product_id)
);

alter table rate_plan add constraint pk_rate_plan
primary key (rate_plan_id);

--insert into rate_plan (rate_plan_id, product_id, prepayment_cycle, contract_period, registration_fee, rental_fee) 
--values(next value for seq_rate_plan, 1, '12개월', '36개월', 50000, 42900);

-- image
create sequence seq_image START WITH 1 INCREMENT BY 1 NOCYCLE;

create table image (
    image_id number(10,0) not null,
    product_id number(10,0) not null,
    folderpath varchar2(3000) not null,
    filename varchar2(2000) not null,
    constraint fk_image_product_id foreign key(product_id) references product(product_id)
);

alter table image add constraint pk_image
primary key (image_id);

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 1, '/resources/img/service/products', '/product01.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 2, '/resources/img/service/products', '/product02.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 3, '/resources/img/service/products', '/product03.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 4, '/resources/img/service/products', '/product04.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 5, '/resources/img/service/products', '/product05.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 6, '/resources/img/service/products', '/product06.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 7, '/resources/img/service/products', '/product07.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 8, '/resources/img/service/products', '/product08.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 9, '/resources/img/service/products', '/product09.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 10, '/resources/img/service/products', '/product10.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 11, '/resources/img/service/products', '/product11.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 12, '/resources/img/service/products', '/product12.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 13, '/resources/img/service/products', '/product13.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 14, '/resources/img/service/products', '/product14.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 15, '/resources/img/service/products', '/product15.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 16, '/resources/img/service/products', '/product16.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 17, '/resources/img/service/products', '/product17.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 18, '/resources/img/service/products', '/product18.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 19, '/resources/img/service/products', '/product19.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 20, '/resources/img/service/products', '/product20.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 21, '/resources/img/service/products', '/product21.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 22, '/resources/img/service/products', '/product22.png');

insert into image (image_id, product_id, folderpath, filename) 
values(next value for seq_image, 23, '/resources/img/service/products', '/product23.png');


-- option
create sequence seq_options START WITH 1 INCREMENT BY 1 NOCYCLE;

create table options (
    option_id number(10,0) not null,
    large_category varchar2(255) not null,
    small_category varchar2(255) not null
);

alter table options add constraint pk_options
primary key (option_id);

insert into options (option_id, large_category, small_category) 
values(next value for seq_options, '기능', '냉온정수기');

-- product_option
create table product_option (
    product_id number(10,0) not null,
    option_id number(10,0) not null,
    constraint fk_product_option_product_id foreign key(product_id) references product(product_id),
    constraint fk_product_option_option_id foreign key(option_id) references options(option_id)
);

-- rate_plan 컬럼 삭제 
ALTER TABLE rate_plan DROP COLUMN registration_fee;
ALTER TABLE rate_plan DROP COLUMN prepayment_cycle;

-- rate_plan 데이터 추가

--insert into rate_plan (rate_plan_id, product_id, prepayment_cycle, contract_period, registration_fee, rental_fee) 
--values(next value for seq_rate_plan, 1, '12개월', '36개월', 50000, 42900);

-- product_id 1
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 1, '12', order_fee * 0.2 FROM product WHERE product_id = 1;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 1, '24', order_fee * 0.25 FROM product WHERE product_id = 1;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 1, '36', order_fee * 0.3 FROM product WHERE product_id = 1;

-- product_id 2
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 2, '12', order_fee * 0.2 FROM product WHERE product_id = 2;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 2, '24', order_fee * 0.25 FROM product WHERE product_id = 2;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 2, '36', order_fee * 0.3 FROM product WHERE product_id = 2;

-- product_id 3
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 3, '12', order_fee * 0.2 FROM product WHERE product_id = 3;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 3, '24', order_fee * 0.25 FROM product WHERE product_id = 3;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 3, '36', order_fee * 0.3 FROM product WHERE product_id = 3;

-- product_id 4
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 4, '12', order_fee * 0.2 FROM product WHERE product_id = 4;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 4, '24', order_fee * 0.25 FROM product WHERE product_id = 4;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 4, '36', order_fee * 0.3 FROM product WHERE product_id = 4;

-- product_id 5
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 5, '12', order_fee * 0.2 FROM product WHERE product_id = 5;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 5, '24', order_fee * 0.25 FROM product WHERE product_id = 5;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 5, '36', order_fee * 0.3 FROM product WHERE product_id = 5;

-- product_id 6
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 6, '12', order_fee * 0.2 FROM product WHERE product_id = 6;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 6, '24', order_fee * 0.25 FROM product WHERE product_id = 6;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 6, '36', order_fee * 0.3 FROM product WHERE product_id = 6;

-- product_id 7
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 7, '12', order_fee * 0.2 FROM product WHERE product_id = 7;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 7, '24', order_fee * 0.25 FROM product WHERE product_id = 7;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 7, '36', order_fee * 0.3 FROM product WHERE product_id = 7;

-- product_id 8
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 8, '12', order_fee * 0.2 FROM product WHERE product_id = 8;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 8, '24', order_fee * 0.25 FROM product WHERE product_id = 8;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 8, '36', order_fee * 0.3 FROM product WHERE product_id = 8;

-- product_id 9
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 9, '12', order_fee * 0.2 FROM product WHERE product_id = 9;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 9, '24', order_fee * 0.25 FROM product WHERE product_id = 9;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 9, '36', order_fee * 0.3 FROM product WHERE product_id = 9;

-- product_id 10
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 10, '12', order_fee * 0.2 FROM product WHERE product_id = 10;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 10, '24', order_fee * 0.25 FROM product WHERE product_id = 10;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 10, '36', order_fee * 0.3 FROM product WHERE product_id = 10;

-- product_id 11
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 11, '12', order_fee * 0.2 FROM product WHERE product_id = 11;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 11, '24', order_fee * 0.25 FROM product WHERE product_id = 11;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 11, '36', order_fee * 0.3 FROM product WHERE product_id = 11;

-- product_id 12
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 12, '12', order_fee * 0.2 FROM product WHERE product_id = 12;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 12, '24', order_fee * 0.25 FROM product WHERE product_id = 12;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 12, '36', order_fee * 0.3 FROM product WHERE product_id = 12;

-- product_id 13
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 13, '12', order_fee * 0.2 FROM product WHERE product_id = 13;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 13, '24', order_fee * 0.25 FROM product WHERE product_id = 13;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 13, '36', order_fee * 0.3 FROM product WHERE product_id = 13;

-- product_id 14
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 14, '12', order_fee * 0.2 FROM product WHERE product_id = 14;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 14, '24', order_fee * 0.25 FROM product WHERE product_id = 14;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 14, '36', order_fee * 0.3 FROM product WHERE product_id = 14;

-- product_id 15
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 15, '12', order_fee * 0.2 FROM product WHERE product_id = 15;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 15, '24', order_fee * 0.25 FROM product WHERE product_id = 15;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 15, '36', order_fee * 0.3 FROM product WHERE product_id = 15;

-- product_id 16
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 16, '12', order_fee * 0.2 FROM product WHERE product_id = 16;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 16, '24', order_fee * 0.25 FROM product WHERE product_id = 16;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 16, '36', order_fee * 0.3 FROM product WHERE product_id = 16;

-- product_id 17
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 17, '12', order_fee * 0.2 FROM product WHERE product_id = 17;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 17, '24', order_fee * 0.25 FROM product WHERE product_id = 17;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 17, '36', order_fee * 0.3 FROM product WHERE product_id = 17;

-- product_id 18
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 18, '12', order_fee * 0.2 FROM product WHERE product_id = 18;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 18, '24', order_fee * 0.25 FROM product WHERE product_id = 18;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 18, '36', order_fee * 0.3 FROM product WHERE product_id = 18;

-- product_id 19
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 19, '12', order_fee * 0.2 FROM product WHERE product_id = 19;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 19, '24', order_fee * 0.25 FROM product WHERE product_id = 19;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 19, '36', order_fee * 0.3 FROM product WHERE product_id = 19;

-- product_id 20
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 20, '12', order_fee * 0.2 FROM product WHERE product_id = 20;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 20, '24', order_fee * 0.25 FROM product WHERE product_id = 20;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 20, '36', order_fee * 0.3 FROM product WHERE product_id = 20;

-- product_id 21
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 21, '12', order_fee * 0.2 FROM product WHERE product_id = 21;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 21, '24', order_fee * 0.25 FROM product WHERE product_id = 21;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 21, '36', order_fee * 0.3 FROM product WHERE product_id = 21;

-- product_id 22
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 22, '12', order_fee * 0.2 FROM product WHERE product_id = 22;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 22, '24', order_fee * 0.25 FROM product WHERE product_id = 22;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 22, '36', order_fee * 0.3 FROM product WHERE product_id = 22;

-- product_id 23
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 23, '12', order_fee * 0.2 FROM product WHERE product_id = 23;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 23, '24', order_fee * 0.25 FROM product WHERE product_id = 23;
INSERT INTO rate_plan (rate_plan_id, product_id, contract_period, rental_fee) SELECT next value for seq_rate_plan, 23, '36', order_fee * 0.3 FROM product WHERE product_id = 23;

-- member 데이터 추가
insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw02', '김준호', 'user02@gmail.com', '010-2345-6789', 'ROLE_USER', '10001', '서울 용산구 이촌로 301', '한강로2가 256', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw03', '이서연', 'user03@gmail.com', '010-3456-7890', 'ROLE_USER', '10002', '서울 성동구 왕십리로 410', '하왕십리동 886', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw04', '박지수', 'user04@gmail.com', '010-4567-8901', 'ROLE_USER', '10003', '서울 광진구 자양로 117', '자양동 227-3', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw05', '최예진', 'user05@gmail.com', '010-5678-9012', 'ROLE_USER', '10004', '서울 동대문구 전농로 23', '전농동 300-5', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw06', '정민재', 'user06@gmail.com', '010-6789-0123', 'ROLE_USER', '10005', '서울 중랑구 면목로 310', '면목동 100', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw07', '한지훈', 'user07@gmail.com', '010-7890-1234', 'ROLE_USER', '10006', '서울 성북구 종암로 167', '종암동 3-15', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw08', '김태현', 'user08@gmail.com', '010-8901-2345', 'ROLE_USER', '10007', '서울 강북구 도봉로 318', '수유동 74-17', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw09', '유서아', 'user09@gmail.com', '010-9012-3456', 'ROLE_USER', '10008', '서울 도봉구 노해로 123', '창동 210', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw10', '노하준', 'user10@gmail.com', '010-0123-4567', 'ROLE_USER', '10009', '서울 노원구 동일로 1416', '상계동 770', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw11', '조윤호', 'user11@gmail.com', '010-1234-5678', 'ROLE_USER', '10010', '서울 은평구 은평로 170', '녹번동 77', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw12', '윤서진', 'user12@gmail.com', '010-2345-6789', 'ROLE_USER', '10011', '서울 서대문구 연희로 250', '연희동 92-15', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw13', '이민준', 'user13@gmail.com', '010-3456-7890', 'ROLE_USER', '10012', '서울 마포구 월드컵로 60', '상암동 1600-1', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw14', '박준희', 'user14@gmail.com', '010-4567-8901', 'ROLE_USER', '10013', '서울 양천구 목동동로 233', '목동 917', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw15', '최은우', 'user15@gmail.com', '010-5678-9012', 'ROLE_USER', '10014', '서울 강서구 양천로 551', '화곡동 980', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw16', '정민서', 'user16@gmail.com', '010-6789-0123', 'ROLE_USER', '10015', '서울 구로구 경인로 662', '구로동 637-21', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw17', '한지원', 'user17@gmail.com', '010-7890-1234', 'ROLE_USER', '10016', '서울 금천구 시흥대로 97', '시흥동 984', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw18', '김태민', 'user18@gmail.com', '010-8901-2345', 'ROLE_USER', '10017', '서울 영등포구 도림로 415', '도림동 275-1', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw19', '유서현', 'user19@gmail.com', '010-9012-3456', 'ROLE_USER', '10018', '서울 동작구 등용로 99', '사당동 105-19', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw20', '노하람', 'user20@gmail.com', '010-0123-4567', 'ROLE_USER', '10019', '서울 관악구 관악로 145', '봉천동 1600-3', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw21', '조유진', 'user21@gmail.com', '010-1234-6789', 'ROLE_USER', '10020', '서울 서초구 강남대로 201', '반포동 14-3', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw22', '윤지호', 'user22@gmail.com', '010-2345-7890', 'ROLE_USER', '10021', '서울 강남구 테헤란로 311', '역삼동 837-20', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw23', '이수민', 'user23@gmail.com', '010-3456-8901', 'ROLE_USER', '10022', '서울 송파구 올림픽로 300', '잠실동 100', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw24', '박준서', 'user24@gmail.com', '010-4567-9012', 'ROLE_USER', '10023', '서울 강동구 천호대로 1004', '천호동 405-22', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw25', '최하늘', 'user25@gmail.com', '010-5678-0123', 'ROLE_USER', '10024', '서울 동대문구 회기로 85', '휘경동 174', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw26', '정다비', 'user26@gmail.com', '010-6789-1234', 'ROLE_USER', '10025', '서울 중랑구 봉우재로 35', '묵동 911-5', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw27', '한서우', 'user27@gmail.com', '010-7890-2345', 'ROLE_USER', '10026', '서울 성북구 보문로 77', '보문동 321', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw28', '김태리', 'user28@gmail.com', '010-8901-3456', 'ROLE_USER', '10027', '서울 강북구 인수봉로 66', '수유동 73-3', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw29', '유하은', 'user29@gmail.com', '010-9012-4567', 'ROLE_USER', '10028', '서울 도봉구 노해로 408', '창동 211-8', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw30', '노지민', 'user30@gmail.com', '010-0123-5678', 'ROLE_USER', '10029', '서울 노원구 동일로 1629', '상계동 771-5', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw31', '조은지', 'user31@gmail.com', '010-1234-6789', 'ROLE_USER', '10030', '서울 서초구 반포대로 39', '반포동 14-4', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw32', '윤하늘', 'user32@gmail.com', '010-2345-7890', 'ROLE_USER', '10031', '서울 강남구 도곡로 508', '역삼동 838', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw33', '이준호', 'user33@gmail.com', '010-3456-8901', 'ROLE_USER', '10032', '서울 송파구 송이로 156', '잠실동 101', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw34', '박서진', 'user34@gmail.com', '010-4567-9012', 'ROLE_USER', '10033', '서울 강동구 양재대로 1377', '천호동 406', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw35', '최진우', 'user35@gmail.com', '010-5678-0123', 'ROLE_USER', '10034', '서울 동대문구 사가정로 105', '휘경동 175', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw36', '정태준', 'user36@gmail.com', '010-6789-1234', 'ROLE_USER', '10035', '서울 중랑구 신내로 211', '묵동 912', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw37', '한수현', 'user37@gmail.com', '010-7890-2345', 'ROLE_USER', '10036', '서울 성북구 정릉로 77', '보문동 322', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw38', '김은우', 'user38@gmail.com', '010-8901-3456', 'ROLE_USER', '10037', '서울 강북구 삼양로 111', '수유동 74-4', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw39', '유준혁', 'user39@gmail.com', '010-9012-4567', 'ROLE_USER', '10038', '서울 도봉구 마들로 666', '창동 212', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw40', '노하늬', 'user40@gmail.com', '010-0123-4567', 'ROLE_USER', '10039', '서울 노원구 중계로 77', '상계동 772', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw41', '조민규', 'user41@gmail.com', '010-1234-6789', 'ROLE_USER', '10040', '서울 서초구 서초대로 78', '반포동 15-5', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw42', '윤소이', 'user42@gmail.com', '010-2345-7890', 'ROLE_USER', '10041', '서울 강남구 언주로 333', '역삼동 839', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw43', '이하윤', 'user43@gmail.com', '010-3456-8901', 'ROLE_USER', '10042', '서울 송파구 가락로 156', '잠실동 102', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw44', '박하린', 'user44@gmail.com', '010-4567-9012', 'ROLE_USER', '10043', '서울 강동구 상암로 1404', '천호동 407', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw45', '최연수', 'user45@gmail.com', '010-5678-0123', 'ROLE_USER', '10044', '서울 동대문구 장한로 77', '휘경동 176', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw46', '정민규', 'user46@gmail.com', '010-6789-1234', 'ROLE_USER', '10045', '서울 중랑구 망우로 300', '묵동 913', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw47', '한지애', 'user47@gmail.com', '010-7890-2345', 'ROLE_USER', '10046', '서울 성북구 성북로 100', '보문동 323', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw48', '김수현', 'user48@gmail.com', '010-8901-3456', 'ROLE_USER', '10047', '서울 강북구 도봉로 222', '수유동 75', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw49', '유서진', 'user49@gmail.com', '010-9012-4567', 'ROLE_USER', '10048', '서울 도봉구 노해로 500', '창동 213', current_timestamp, current_timestamp);

insert into member(member_id, password, name, email, phoneno, roles, postcode, address, detailaddress, created_at, updated_at)
values(next value for seq_member, 'pw50', '노민준', 'user50@gmail.com', '010-0123-4567', 'ROLE_USER', '10049', '서울 노원구 월계로 177', '상계동 773', current_timestamp, current_timestamp);
