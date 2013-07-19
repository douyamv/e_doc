package njust.PO;

/**
 * Userprivilege entity. @author MyEclipse Persistence Tools
 */

public class Userprivilege implements java.io.Serializable {

	// Fields

	private String username;
	private User user;
	private String privilegeType;
	private Integer privilegeTimes;

	// Constructors

	/** default constructor */
	public Userprivilege() {
	}

	/** minimal constructor */
	public Userprivilege(String username, User user) {
		this.username = username;
		this.user = user;
	}

	/** full constructor */
	public Userprivilege(String username, User user, String privilegeType,
			Integer privilegeTimes) {
		this.username = username;
		this.user = user;
		this.privilegeType = privilegeType;
		this.privilegeTimes = privilegeTimes;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPrivilegeType() {
		return this.privilegeType;
	}

	public void setPrivilegeType(String privilegeType) {
		this.privilegeType = privilegeType;
	}

	public Integer getPrivilegeTimes() {
		return this.privilegeTimes;
	}

	public void setPrivilegeTimes(Integer privilegeTimes) {
		this.privilegeTimes = privilegeTimes;
	}

}