package monitor

class MachineFeed {
	Machine machine
	Date feedDate
	Date creationDate
	BigDecimal currentReading
	BigDecimal sessionReading
	Date sessionStart
	BigDecimal currentGpsX
	BigDecimal currentGpsY
	String readingUnits
	String state
    static constraints = {
		machine nullable:false
		feedDate nullable:false
		creationDate nullable:true
		currentReading nullable:true
		sessionReading nullable:true
		sessionStart nullable:true
		currentGpsX nullable:true
		currentGpsY nullable:true
		readingUnits nullable:true
		state nullable:true
    }
}
