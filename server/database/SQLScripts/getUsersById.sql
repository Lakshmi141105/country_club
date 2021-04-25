DELIMITER $$

create procedure getUsersById(
	in _userId int
)
begin

	select u.user_id, u.f_name, u.l_name, u.street, u.zip_code, u.city, u.status, m.membership_type, 
        m.start_date, m.end_date, auth_id from user u
    inner join member m on u.user_id = m.user_id
    where u.user_id = _userId;
    
end$$

DELIMITER ;


