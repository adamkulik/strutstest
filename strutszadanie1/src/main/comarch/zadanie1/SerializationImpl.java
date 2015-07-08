package comarch.zadanie1;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

import com.thoughtworks.xstream.XStream;


public class SerializationImpl {
	
	Serialization data;

	
	public SerializationImpl(String name, String middleName, String lastName,
			String sex, String day, String month, String year, String state) {

		data = new Serialization(name,middleName,lastName,sex,day,month,year,state);
	
	}
	
	public void saveMe(){

		XStream xstream = new XStream();
		xstream.alias("Zadanie1", Serialization.class);
		try(PrintWriter out = new PrintWriter("Summary.txt")){
		
			String x = xstream.toXML(data);
			out.println(x);
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		}

	
	}
}
