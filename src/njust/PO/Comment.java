package njust.PO;

import java.sql.Timestamp;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private String commentId;
	private User user;
	private Topic topic;
	private Timestamp commentTime;
	private String commentContent;
	private Integer score;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(String commentId, User user, Topic topic,
			Timestamp commentTime, String commentContent, Integer score) {
		this.commentId = commentId;
		this.user = user;
		this.topic = topic;
		this.commentTime = commentTime;
		this.commentContent = commentContent;
		this.score = score;
	}

	// Property accessors

	public String getCommentId() {
		return this.commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Topic getTopic() {
		return this.topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public Timestamp getCommentTime() {
		return this.commentTime;
	}

	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}

	public String getCommentContent() {
		return this.commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

}