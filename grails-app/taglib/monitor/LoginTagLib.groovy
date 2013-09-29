package monitor

class LoginTagLib {
	def springSecurityService
	def loginControl = {
		if(springSecurityService.isLoggedIn()){
			out << "Hello ${springSecurityService.getCurrentUser().toString()}"
			out << """[${link(action:"index",
                    controller:"logout"){"Logout"}}]"""
		} else {
			out << """[${link(action:"index",
                    controller:"login"){"Login"}}]"""
		}
	}

}
