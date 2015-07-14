package comarch.zadanie1.authenticate;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5 {

	private String hash;

	public Md5(String hash) {

		this.hash = hash;
	}

	public String hashMe() throws NoSuchAlgorithmException {

		MessageDigest md = MessageDigest.getInstance("MD5");

		md.update(hash.getBytes());

		byte byteData[] = md.digest();


		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < byteData.length; i++) {
			sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
					.substring(1));
		}

		hash = new String(sb.toString());

		return hash;

	}
}
