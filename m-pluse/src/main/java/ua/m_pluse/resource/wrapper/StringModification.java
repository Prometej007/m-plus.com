package ua.m_pluse.resource.wrapper;
/**
 * @author prometej
 * @version 1.0
 */
public class StringModification {

	/**
	 * 
	 * @param base
	 * @return String for file true download on all platworms of server
	 */
	public String overrideString(String base) {
		String baseString = "";
		boolean check = true;
		for (int i = 0; i < base.length(); i++) {
			if (base.charAt(i) == '/' && check) {
				for (int j = i; j < base.length(); j++) {
					baseString += base.charAt(j);

					check = false;
				}

			} else {

			}
		}

		return "http:/" + baseString;
	}

}
