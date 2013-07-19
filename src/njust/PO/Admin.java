package njust.PO;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Integer auth;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String username, String password, Integer auth) {
		this.username = username;
		this.password = password;
		this.auth = auth;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getAuth() {
		return this.auth;
	}

	public void setAuth(Integer auth) {
		this.auth = auth;
	}

}