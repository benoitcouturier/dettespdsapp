package getFromApi.referentiels.tarifsLivraison;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.codehaus.jackson.map.ObjectMapper;

import Entites.referentiels.tarifsLivraison.Withdrawal_price;
import Entites.referentiels.tarifsLivraison.Command;

public class GetApi {
	
	public Command[] getCommands() {

		try {

			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/command/all");
			getRequest.addHeader("accept", "application/json");

			HttpResponse response = httpClient.execute(getRequest);

			if (response.getStatusLine().getStatusCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ response.getStatusLine().getStatusCode());
			}

			BufferedReader br = new BufferedReader(
					new InputStreamReader((response.getEntity().getContent())));

			String output;
			String resp = new String();
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				resp = resp+output;
			}
			
			ObjectMapper mapper = new ObjectMapper();
			Command[] commands = mapper.readValue(resp, Command[].class);
			System.out.println(commands.length);
			
			httpClient.getConnectionManager().shutdown();


			return commands;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
	
	public Withdrawal_price[] getWPs() {

		try {

			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/WP/all");
			getRequest.addHeader("accept", "application/json");

			HttpResponse response = httpClient.execute(getRequest);

			if (response.getStatusLine().getStatusCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ response.getStatusLine().getStatusCode());
			}

			BufferedReader br = new BufferedReader(
					new InputStreamReader((response.getEntity().getContent())));

			String output;
			String resp = new String();
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				resp = resp+output;
			}
			
			ObjectMapper mapper = new ObjectMapper();
			Withdrawal_price[] wp = mapper.readValue(resp, Withdrawal_price[].class);
			System.out.println(wp.length);
			
			httpClient.getConnectionManager().shutdown();


			return wp;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
	
}
