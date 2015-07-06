package comarch.zadanie1.forms;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.struts.action.ActionForm;

public class VoivodshipForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private List<String> voivodshipList;
	private Scanner scanner;
	private final String path = "wojewodztwa.txt";

	public VoivodshipForm() {
		
		voivodshipList = new ArrayList<String>();
		loadList();
	}

	void loadList() {

		try {
			scanner = new Scanner(new File(path));
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}

		while (scanner.hasNext()) {
			voivodshipList.add(scanner.next());
		}
		scanner.close();
		
		print();
	}

	public void print() {

		for (String x : voivodshipList)
			System.out.println(x);
	}

	

}
