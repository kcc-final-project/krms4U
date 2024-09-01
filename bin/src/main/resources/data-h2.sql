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

insert into rate_plan (rate_plan_id, product_id, prepayment_cycle, contract_period, registration_fee, rental_fee) 
values(next value for seq_rate_plan, 1, '12개월', '36개월', 50000, 42900);

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

insert into product_option (product_id, option_id) 
values(1, 1);