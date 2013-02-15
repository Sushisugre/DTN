package model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;

/**
 * File entity. @author MyEclipse Persistence Tools
 */

public class File implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String type;
	private String title;
	private String content;
	private String permission;
	private Date modifiedtime;
    private Set<Tag> tags;
	// Constructors


	/** default constructor */
	public File() {
	}

	/** minimal constructor */
	public File(User user, String type, String title, String permission) {
		this.user = user;
		this.type = type;
		this.title = title;
		this.permission = permission;
	}

	/** full constructor */
	public File(User user, String type, String title, String content,
			String permission, Timestamp modifiedtime) {
		this.user = user;
		this.type = type;
		this.title = title;
		this.content = content;
		this.permission = permission;
		this.modifiedtime = modifiedtime;

	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPermission() {
		return this.permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public Date getModifiedtime() {
		return this.modifiedtime;
	}

	public void setModifiedtime(Date modifiedtime) {
		this.modifiedtime = modifiedtime;
	}
	public Set<Tag> getTags() {
		return tags;
	}

	public void setTags(Set<Tag> tags) {
		this.tags = tags;
	}

}