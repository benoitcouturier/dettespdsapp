package getFromApi.referentiels.profils;

import Entites.referentiels.profils.Profil;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class GetApiProfils {


    public Profil[] get() {

        try {
            DefaultHttpClient httpClient = new DefaultHttpClient();
            HttpGet getRequest = new HttpGet(
                    "http://192.168.20.3:8080/ApiRest/RestGT/Profil/tous");
            getRequest.addHeader("accept", "application/json");

            //Gestion des erreurs
            HttpResponse response = httpClient.execute(getRequest);

            if (response.getStatusLine().getStatusCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + response.getStatusLine().getStatusCode());
            }

            //Lit l'affichage
            BufferedReader br = new BufferedReader(
                    new InputStreamReader((response.getEntity().getContent())));

            // Affichage console
            String output;
            String resp = new String();
            System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                System.out.println(output);
                resp = resp+output;
            }

            //parse JSON -> Java
            ObjectMapper mapper = new ObjectMapper();
            Profil[] p = mapper.readValue(resp, Profil[].class);

            //close
            httpClient.getConnectionManager().shutdown();


            return p;

        } catch (ClientProtocolException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();
        }
        return null;

    }
}