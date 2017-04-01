package ua.m_pluse.resource.wrapper;


/**
 * @author prometej
 * @version 1.0
 */
public class StringWrapper {

	/**
	 * only for return style="some shit"
	 */
	
	public String string;
	
	public StringWrapper() {
		// TODO Auto-generated constructor stub
	}

	public StringWrapper(String string) {
		super();
		this.string = string;
	}

	public String getString() {
		return string;
	}

	public void setString(String string) {
		this.string = string;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((string == null) ? 0 : string.hashCode());
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
		StringWrapper other = (StringWrapper) obj;
		if (string == null) {
			if (other.string != null)
				return false;
		} else if (!string.equals(other.string))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "StringWrapper [string=" + string + "]";
	}
	
	
}
