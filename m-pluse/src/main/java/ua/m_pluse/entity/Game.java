package ua.m_pluse.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author prometej
 * @version 1.0
 */

@Entity
public class Game {
	
	/**
	 * 
	 * table game in DB for list of games on site 
	 * 
	 * name - name of game
	 * 
	 * path - path for image in DB
	 * 
	 * pathA - link for game
	 * 
	 */
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String path;
	private String pathA;

	public Game() {

	}

	public Game(String name, String path, String pathA) {
		this.pathA = pathA;
		this.name = name;
		this.path = path;
	}

	public String getPathA() {
		return pathA;
	}

	public void setPathA(String pathA) {
		this.pathA = pathA;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((path == null) ? 0 : path.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Game other = (Game) obj;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (path == null) {
			if (other.path != null)
				return false;
		} else if (!path.equals(other.path))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Game [id=" + id + ", name=" + name + ", path=" + path + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
