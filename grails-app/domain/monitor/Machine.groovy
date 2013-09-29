package monitor

class Machine {
	String machineId
	Manufacturer manufacturer
	String code
	BigDecimal gpsX
	BigDecimal gpsY
	monitor.User user
	String simNum
	String simProvider
	Boolean active
	Boolean purged 
	Date installedDate
	Date creationDate
	Date lastActiveOn
	String readingUnits
    static constraints = {
		machineId blank:false, nullable:false, unique: true
		code nullable:true
		gpsX nullable:true
		gpsY nullable:true
		simNum nullable:true
		simProvider nullable:true
		active nullable:true
		purged nullable:true
		installedDate nullable:true
		creationDate nullable:true
		lastActiveOn nullable:true
		readingUnits nullable:true
    }
	
	String toString() {
		return machineId;
	}
}
