
select of_type from airplane group by of_type;

/*Who can fly large air craft*/
select * from pilot where not exists (select pilot_num from pilot_restrictions where r_code!="SMALL" and pilot.pilot_num=pilot_restrictions.pilot_num);

/*Who can fly at night*/
select * from pilot where not exists (select pilot_num from pilot_restrictions where r_code!="DAY" and pilot.pilot_num=pilot_restrictions.pilot_num);

/*Aircraft under a weight*/
select * from airplane, plane_type where airplane.of_type = plane_type.model_number and weight < 10000;

/*"Small" aircraft, may not be acurate real data here*/
select * from plane_type where weight < 35000;

select * from _owner;
select * from airplane;
select * from corporation;
select * from employee;
select * from flies;
select * from hangar;
select * from maintain;
select * from owns;
select * from person;
select * from pilot;
select * from pilot_restrictions;
select * from plane_type;
select * from restriction;
select * from service;
select * from work_code;
select * from works_on;
