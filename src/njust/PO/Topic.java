package njust.PO;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Topic entity. @author MyEclipse Persistence Tools
 */

public class Topic implements java.io.Serializable {

	// Fields

	private String topicId;
	private User user;
	private Timestamp publishTime;
	private String topicName;
	private String link;
	private String wordDescription;
	private String picDescription;
	private Float averageScore;
	private Integer downloadNum;
	private String type;
	private Set comments = new HashSet(0);
	private Set tags = new HashSet(0);
	private Set privilegetopics = new HashSet(0);

	// Constructors

	/** default constructor */
	public Topic() {
	}

	/** minimal constructor */
	public Topic(String topicId, User user, Timestamp publishTime,
			String topicName, String link, String wordDescription,
			Float averageScore, Integer downloadNum, String type) {
		this.topicId = topicId;
		this.user = user;
		this.publishTime = publishTime;
		this.topicName = topicName;
		this.link = link;
		this.wordDescription = wordDescription;
		this.averageScore = averageScore;
		this.downloadNum = downloadNum;
		this.type = type;
	}

	/** full constructor */
	public Topic(String topicId, User user, Timestamp publishTime,
			String topicName, String link, String wordDescription,
			String picDescription, Float averageScore, Integer downloadNum,
			String type, Set comments, Set tags, Set privilegetopics) {
		this.topicId = topicId;
		this.user = user;
		this.publishTime = publishTime;
		this.topicName = topicName;
		this.link = link;
		this.wordDescription = wordDescription;
		this.picDescription = picDescription;
		this.averageScore = averageScore;
		this.downloadNum = downloadNum;
		this.type = type;
		this.comments = comments;
		this.tags = tags;
		this.privilegetopics = privilegetopics;
	}

	// Property accessors

	public String getTopicId() {
		return this.topicId;
	}

	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}

	public String getTopicName() {
		return this.topicName;
	}

	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getWordDescription() {
		return this.wordDescription;
	}

	public void setWordDescription(String wordDescription) {
		this.wordDescription = wordDescription;
	}

	public String getPicDescription() {
		return this.picDescription;
	}

	public void setPicDescription(String picDescription) {
		this.picDescription = picDescription;
	}

	public Float getAverageScore() {
		return this.averageScore;
	}

	public void setAverageScore(Float averageScore) {
		this.averageScore = averageScore;
	}

	public Integer getDownloadNum() {
		return this.downloadNum;
	}

	public void setDownloadNum(Integer downloadNum) {
		this.downloadNum = downloadNum;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getTags() {
		return this.tags;
	}

	public void setTags(Set tags) {
		this.tags = tags;
	}

	public Set getPrivilegetopics() {
		return this.privilegetopics;
	}

	public void setPrivilegetopics(Set privilegetopics) {
		this.privilegetopics = privilegetopics;
	}

}