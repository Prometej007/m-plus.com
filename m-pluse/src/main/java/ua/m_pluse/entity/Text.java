package ua.m_pluse.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Text {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	Label label;
	String nameLabel;
	String text;
	String languageName;
	String languageTeg;

	public Text() {

	}

	public Text(Label label, String nameLabel, String text, String languageName, String languageTeg) {
		super();
		this.label = label;
		this.nameLabel = nameLabel;
		this.text = text;
		this.languageName = languageName;
		this.languageTeg = languageTeg;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((label == null) ? 0 : label.hashCode());
		result = prime * result + ((languageName == null) ? 0 : languageName.hashCode());
		result = prime * result + ((languageTeg == null) ? 0 : languageTeg.hashCode());
		result = prime * result + ((nameLabel == null) ? 0 : nameLabel.hashCode());
		result = prime * result + ((text == null) ? 0 : text.hashCode());
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
		Text other = (Text) obj;
		if (id != other.id)
			return false;
		if (label != other.label)
			return false;
		if (languageName == null) {
			if (other.languageName != null)
				return false;
		} else if (!languageName.equals(other.languageName))
			return false;
		if (languageTeg == null) {
			if (other.languageTeg != null)
				return false;
		} else if (!languageTeg.equals(other.languageTeg))
			return false;
		if (nameLabel == null) {
			if (other.nameLabel != null)
				return false;
		} else if (!nameLabel.equals(other.nameLabel))
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		return true;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Label getLabel() {
		return label;
	}

	public void setLabel(Label label) {
		this.label = label;
	}

	public String getNameLabel() {
		return nameLabel;
	}

	public void setNameLabel(String nameLabel) {
		this.nameLabel = nameLabel;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getLanguageName() {
		return languageName;
	}

	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}

	public String getLanguageTeg() {
		return languageTeg;
	}

	public void setLanguageTeg(String languageTeg) {
		this.languageTeg = languageTeg;
	}

	@Override
	public String toString() {
		return "Text [id=" + id + ", label=" + label + ", nameLabel=" + nameLabel + ", text=" + text + ", languageName="
				+ languageName + ", languageTeg=" + languageTeg + "]";
	}


}
