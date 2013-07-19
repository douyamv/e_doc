package njust.PO;

/**
 * Record entity. @author MyEclipse Persistence Tools
 */

public class Record implements java.io.Serializable {

	// Fields

	private String recordId;
	private User user;
	private String recordType;

	// Constructors

	/** default constructor */
	public Record() {
	}

	/** full constructor */
	public Record(String recordId, User user, String recordType) {
		this.recordId = recordId;
		this.user = user;
		this.recordType = recordType;
	}

	// Property accessors

	public String getRecordId() {
		return this.recordId;
	}

	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRecordType() {
		return this.recordType;
	}

	public void setRecordType(String recordType) {
		this.recordType = recordType;
	}

}