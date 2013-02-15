package model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String nickname;
	private Integer space;
	private Integer usedspace;
	private String description;
	private Set<File> files;
	

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password, Integer space,
			Integer usedspace) {
		this.username = username;
		this.password = password;
		this.space = space;
		this.usedspace = usedspace;
	}

	/** full constructor */
	public User(String username, String password, String nickname,
			Integer space, Integer usedspace, String description, Set<File> files) {
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.space = space;
		this.usedspace = usedspace;
		this.description = description;
        this.files=files;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getSpace() {
		return this.space;
	}

	public void setSpace(Integer space) {
		this.space = space;
	}

	public Integer getUsedspace() {
		return this.usedspace;
	}

	public void setUsedspace(Integer usedspace) {
		this.usedspace = usedspace;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<File> getFiles() {
		return files;
	}

	public void setFiles(Set<File> files) {
		this.files = files;
	}
}