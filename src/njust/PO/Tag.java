package njust.PO;

/**
 * Tag entity. @author MyEclipse Persistence Tools
 */

public class Tag implements java.io.Serializable {

	// Fields

	private String tagId;
	private Topic topic;
	private String tagName;

	// Constructors

	/** default constructor */
	public Tag() {
	}

	/** full constructor */
	public Tag(String tagId, Topic topic, String tagName) {
		this.tagId = tagId;
		this.topic = topic;
		this.tagName = tagName;
	}

	// Property accessors

	public String getTagId() {
		return this.tagId;
	}

	public void setTagId(String tagId) {
		this.tagId = tagId;
	}

	public Topic getTopic() {
		return this.topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getTagName() {
		return this.tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

}