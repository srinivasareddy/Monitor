package monitor

import org.hibernate.loader.custom.Return;

class Manufacturer {
	String name
	String email
	String address
	String phone
	String code
	String website
    static constraints = {
		name blank:false, nullable: false
		email email:true, blank: false
		website url:true, blank: false   
    }
	
    String toString() {
		return name + ":" + website
	}
}
