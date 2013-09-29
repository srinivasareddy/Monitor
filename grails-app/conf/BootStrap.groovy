

import java.util.Date;
import monitor.Manufacturer;
import monitor.User;
import monitor.UserRole;
import monitor.Role;
import monitor.Machine;
import monitor.MachineFeed;

class BootStrap {

    def init = { servletContext ->
		User user = new User(
			username:"admin",
			password:"ps",
			enabled:true,
			address:"Eluru",
			email : "ps@local.in",
			firstName : "ps",
			secondName : "reddy",
			phoneNum :"123445",
			accountExpired:false,
			accountLocked:false,
			passwordExpired:false
			)
		
		user.save()
		if(user.hasErrors()) {
			println user.errors
		}
		User neha = new User(
			username:"neha",
			password:"2627",
			enabled:true,
			address:"HoshiarPur",
			email : "neha@local.in",
			firstName : "neha",
			secondName : "reddy",
			phoneNum :"123445",
			accountExpired:false,
			accountLocked:false,
			passwordExpired:false
			)
		
		neha.save()
		if(neha.hasErrors()) {
			println neha.errors
		}
		
		Manufacturer manufacturer = new Manufacturer(
			name:"logicio",
			email:"admin@logicio.com",
			address:"denamrk",
			phone : "12345666",
			code : "Asin1234",
			website : "http://logicio.com"
			)
		manufacturer.save()
		if(manufacturer.hasErrors()) {
			println manufacturer.errors
		}
		Role role = new Role(
			authority : "ROLE_ADMIN"
			)
		role.save()
		if(role.hasErrors()) {
			println role.errors
		}
		Role roleUser = new Role(
			authority : "ROLE_USER"
			)
		roleUser.save()
		if(roleUser.hasErrors()) {
			println roleUser.errors
		}
		UserRole userRole = new UserRole(
			user : user,
			role : role
			)
		userRole.save()
		if(userRole.hasErrors()) {
			println userRole.errors
		}
		UserRole nehaRole = new UserRole(
			user : neha,
			role : roleUser
			)
		nehaRole.save()
		if(nehaRole.hasErrors()) {
			println nehaRole.errors
		}
		Role roleSuperUser = new Role(
			authority : "ROLE_SUPER_USER"
			)
		roleSuperUser.save()
		if(roleSuperUser.hasErrors()) {
			println roleSuperUser.errors
		}
		
		Machine machine1 = new Machine(
			machineId : "1",
			manufacturer : manufacturer,
			user : user
		)
		machine1.save()
		if(machine1.hasErrors()) {
			println machine1.errors
		}
		MachineFeed feed1 = new MachineFeed(
			machine : machine1,
			feedDate : new Date() - 1 	
		)
		feed1.save()
		if(feed1.hasErrors()) {
			println feed1.errors
		}
		MachineFeed feed2 = new MachineFeed(
			machine : machine1,
			feedDate : new Date()
		)
		feed2.save()
		if(feed2.hasErrors()) {
			println feed2.errors
		}
	}
    def destroy = {
    }
}
