package njust.PO;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Integer experience;
	private Integer rank;
	private Set topics = new HashSet(0);
	private Set records = new HashSet(0);
	private Set comments = new HashSet(0);
	private Set userprivileges = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password, Integer experience,
			Integer rank) {
		this.username = username;
		this.password = password;
		this.experience = experience;
		this.rank = rank;
	}

	/** full constructor */
	public User(String username, String password, Integer experience,
			Integer rank, Set topics, Set records, Set comments,
			Set userprivileges) {
		this.username = username;
		this.password = password;
		this.experience = experience;
		this.rank = rank;
		this.topics = topics;
		this.records = records;
		this.comments = comments;
		this.userprivileges = userprivileges;
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

	public Integer getExperience() {
		return this.experience;
	}

	public void setExperience(Integer experience) {
		this.experience = experience;
	}

	public Integer getRank() {
		return this.rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public Set getTopics() {
		return this.topics;
	}

	public void setTopics(Set topics) {
		this.topics = topics;
	}

	public Set getRecords() {
		return this.records;
	}

	public void setRecords(Set records) {
		this.records = records;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getUserprivileges() {
		return this.userprivileges;
	}

	public void setUserprivileges(Set userprivileges) {
		this.userprivileges = userprivileges;
	}

}