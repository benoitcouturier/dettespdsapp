package getFromApi.referentiels.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.codehaus.jackson.map.ObjectMapper;
import Entites.portail.gererSonCompteClient.Person;

public class GetClientApi {

}	
	/*public Client[] get() {

		try {
			// appel api
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/Client/tous");
			getRequest.addHeader("accept", "application/json");

			// recupere affichage api
			HttpResponse response = httpClient.execute(getRequest);

			// si ya une erreur 
			if (response.getStatusLine().getStatusCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ response.getStatusLine().getStatusCode());
			}

			// ca lit l'affichage
			BufferedReader br = new BufferedReader(
					new InputStreamReader((response.getEntity().getContent())));

			// affiche dans la console
			String output;
			String resp = new String();
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				resp = resp+output;
			}
			
			// parse du JSON en Objet java
			ObjectMapper mapper = new ObjectMapper();
			Client[] p = mapper.readValue(resp, Client[].class);
			
			// ferme la connexion
			httpClient.getConnectionManager().shutdown();


			return p;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
}*/
