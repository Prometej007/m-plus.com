package ua.m_pluse.entity.enums;

/**
 * @author prometej
 * @version 1.0
 */
public enum Role {
	/**
	 * ROLE_ADMIN for security.xml
	 * ROLE_ONREAD for unread messages(all new)
	 * ROLE_WASREAD for already read messages
	 */
	ROLE_ADMIN,
	ROLE_ONREAD,ROLE_WASREAD,
	ROLE_FROM_VR,ROLE_FROM_GAMES,ROLE_FROM_SITES,ROLE_FROM_MARKETING,ROLE_FROM_3DMODELS;
}
