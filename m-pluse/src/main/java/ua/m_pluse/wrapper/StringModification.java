package ua.m_pluse.wrapper;

public class StringModification {

	public String overrideString(String base, String override) {
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

		return "http://" + baseString;
	}

}
