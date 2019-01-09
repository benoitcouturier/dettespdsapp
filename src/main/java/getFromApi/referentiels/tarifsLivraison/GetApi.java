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

import Entites.referentiels.tarifsLivraison.Command;
import Entites.referentiels.tarifsLivraison.Withdrawal_method;

public class GetApi {
	
//	public Command[] getCommands() {
//
//		try {
//
//			DefaultHttpClient httpClient = new DefaultHttpClient();
//			HttpGet getRequest = new HttpGet(
//					"http://localhost:8080/ApiRest/RestGT/command/all");
//			getRequest.addHeader("accept", "application/json");
//
//			HttpResponse response = httpClient.execute(getRequest);
//
//			if (response.getStatusLine().getStatusCode() != 200) {
//				throw new RuntimeException("Failed : HTTP error code : "
//						+ response.getStatusLine().getStatusCode());
//			}
//
//			BufferedReader br = new BufferedReader(
//					new InputStreamReader((response.getEntity().getContent())));
//
//			String output;
//			String resp = new String();
//			System.out.println("Output from Server .... \n");
//			while ((output = br.readLine()) != null) {
//				System.out.println(output);
//				resp = resp+output;
//			}
//			
//			ObjectMapper mapper = new ObjectMapper();
//			Command[] commands = mapper.readValue(resp, Command[].class);
//			System.out.println(commands.length);
//			
//			httpClient.getConnectionManager().shutdown();
//
//
//			return commands;
//			
//		} catch (ClientProtocolException e) {
//
//			e.printStackTrace();
//
//		} catch (IOException e) {
//
//			e.printStackTrace();
//		}
//		return null;
//			
//	}
	
	public Withdrawal_method[] getWMs() {

		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/WM/all");
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
			Withdrawal_method[] wm = mapper.readValue(resp, Withdrawal_method[].class);
			System.out.println(wm.length);
			
			httpClient.getConnectionManager().shutdown();


			return wm;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
	
	public void addWM() {

		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/WM/add");
			getRequest.addHeader("accept", "application/json");

			HttpResponse response = httpClient.execute(getRequest);

			if (response.getStatusLine().getStatusCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ response.getStatusLine().getStatusCode());
			}
			
			httpClient.getConnectionManager().shutdown();
			System.out.println("Ajout réussi");

			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
			
	}
	
	public String[] getWMNames() {

		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/WM/allNames");
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
			String[] wmNames = mapper.readValue(resp, String[].class);
			System.out.println(wmNames.length);
			
			httpClient.getConnectionManager().shutdown();


			return wmNames;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
	
	public Withdrawal_method[] getWMByNames() {

		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
					"http://localhost:8080/ApiRest/RestGT/WM/find");
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
			Withdrawal_method[] wms = mapper.readValue(resp, Withdrawal_method[].class);
			System.out.println(wms.length);
			
			httpClient.getConnectionManager().shutdown();


			return wms;
			
		} catch (ClientProtocolException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
			
	}
	
}
