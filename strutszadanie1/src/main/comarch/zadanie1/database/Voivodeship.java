package comarch.zadanie1.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ZADANIE1")
public class Voivodeship {
	
	@GeneratedValue
	@Id
	private int id;
	
	@Column(name="VOIVODESHIP")
	private String voivodeship;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVoivodeship() {
		return voivodeship;
	}

	public void setVoivodeship(String voivodeship) {
		this.voivodeship = voivodeship;
	}

}
