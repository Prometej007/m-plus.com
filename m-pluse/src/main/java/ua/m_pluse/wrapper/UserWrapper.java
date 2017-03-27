package ua.m_pluse.wrapper;

public class UserWrapper {
	
	private String name;
	private String phoneOrEmail;

	public UserWrapper() {

	}

	public UserWrapper(String name, String phoneOrEmail) {
		super();
		this.name = name;
		this.phoneOrEmail = phoneOrEmail;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneOrEmail() {
		return phoneOrEmail;
	}

	public void setPhoneOrEmail(String phoneOrEmail) {
		this.phoneOrEmail = phoneOrEmail;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phoneOrEmail == null) ? 0 : phoneOrEmail.hashCode());
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
		UserWrapper other = (UserWrapper) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phoneOrEmail == null) {
			if (other.phoneOrEmail != null)
				return false;
		} else if (!phoneOrEmail.equals(other.phoneOrEmail))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UserWrapper [name=" + name + ", phoneOrEmail=" + phoneOrEmail + "]";
	}
}
