package comarch.zadanie1.serialization;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

import com.thoughtworks.xstream.XStream;

public class XmlSerializationImpl {

	XmlSerializationPlane plane;
	XmlSerializationTrain train;
	boolean isPlaneTicket;

	public XmlSerializationImpl(String name, String middleName,
			String lastName, String sex, String day, String month, String year,
			String ticketType, boolean extraLuggage, boolean windowSeat,
			boolean meal, String state) {

		plane = new XmlSerializationPlane(name, middleName, lastName, sex, day,
				month, year, ticketType, extraLuggage, windowSeat, meal, state);

		isPlaneTicket = true;

	}

	public XmlSerializationImpl(String name, String middleName,
			String lastName, String sex, String day, String month, String year,
			String ticketType, String ticketClass, boolean noTransfer,
			boolean bike, String state) {

		train = new XmlSerializationTrain(name, middleName, lastName, sex, day,
				month, year, ticketType, ticketClass, noTransfer, bike, state);

	}

	public void saveMe() {

		XStream xstream = new XStream();
		xstream.autodetectAnnotations(true);
		try (PrintWriter out = new PrintWriter("Summary.xml")) {

			if (isPlaneTicket) {

				xstream.alias("Zadanie1", XmlSerializationPlane.class);
				String x = xstream.toXML(plane);
				out.println(x);
				System.out.print("zapisane- plane");
			} else {
				xstream.alias("Zadanie1", XmlSerializationTrain.class);
				String x = xstream.toXML(train);
				out.println(x);
				System.out.print("zapisane- train");
			}

		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}

	}
}
