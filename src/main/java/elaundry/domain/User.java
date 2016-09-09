/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package elaundry.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;



@Entity(name="user")
public class User {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    

    @NotEmpty
    @NotBlank
    private String username;
    
    @NotEmpty
    @NotBlank
    private String password;
    
    /*private String authority;
    private boolean enabled;*/
   
   
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
          

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

/*	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}*/
    
    
    
    
}
