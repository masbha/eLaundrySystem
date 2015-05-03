/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package elaundry.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



import elaundry.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>
{
	//@Query("SELECT u FROM user u WHERE username = :username AND password= :password")
	//User checkLogin(@Param("uername") String username, @Param("password") String password);
	User getUserByUsername(String username);
    
}
