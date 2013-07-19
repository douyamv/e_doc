package njust.PO;

import java.sql.Timestamp;

/**
 * Privilegetopic entity. @author MyEclipse Persistence Tools
 */

public class Privilegetopic implements java.io.Serializable {

	// Fields

	private String topicId;
	private Topic topic;
	private String privilegeType;
	private Timestamp privilegeTime;

	// Constructors

	/** default constructor */
	public Privilegetopic() {
	}

	/** full constructor */
	public Privilegetopic(String topicId, Topic topic, String privilegeType,
			Timestamp privilegeTime) {
		this.topicId = topicId;
		this.topic = topic;
		this.privilegeType = privilegeType;
		this.privilegeTime = privilegeTime;
	}

	// Property accessors

	public String getTopicId() {
		return this.topicId;
	}

	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}

	public Topic getTopic() {
		return this.topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getPrivilegeType() {
		return this.privilegeType;
	}

	public void setPrivilegeType(String privilegeType) {
		this.privilegeType = privilegeType;
	}

	public Timestamp getPrivilegeTime() {
		return this.privilegeTime;
	}

	public void setPrivilegeTime(Timestamp privilegeTime) {
		this.privilegeTime = privilegeTime;
	}

}