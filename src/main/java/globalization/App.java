package globalization;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.TreeMap;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class App {

	private static HashMap<String, String> allTuples = new HashMap<String, String>();
	private static ArrayList<String> exceptions = new ArrayList<String>();
	private static JsonParser parser = new JsonParser();

	public static void main(String[] args) throws IOException {
		generateLanguageFiles();
	}

	public static void generateFromFiles() throws IOException {
		exceptions.add("entity-audit");
		exceptions.add("error");
		exceptions.add("health");
		exceptions.add("home");
		exceptions.add("metrics");
		exceptions.add("logs");
		exceptions.add("tracker");
		final File folder = new File("C:\\Development\\Kargomo\\kuryeApp\\src\\main\\webapp\\i18n\\tr");
		listFilesForFolder(folder);
	}

	public static void generateLanguageFiles() {
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		HashMap<String, ArrayList<Translation>> allTranslations = getAllTranslations();
		for (Entry<String, ArrayList<Translation>> entry : allTranslations.entrySet()) {
			String module = entry.getKey();
			ArrayList<Translation> translations = entry.getValue();
			JsonObject root = new JsonObject();
			for (Translation translation : translations) {
				generateObject(translation, root);
			}

			String json = gson.toJson(root);
			TreeMap<String, Object> map = gson.fromJson(json, TreeMap.class);
			String sortedJson = gson.toJson(map);

			Writer fstream = null;
			try {
				fstream = new OutputStreamWriter(
						new FileOutputStream(
								"C:\\Development\\Kargomo\\kuryeApp\\src\\main\\webapp\\i18n\\tr\\" + module + ".json"),
						StandardCharsets.UTF_8);
				fstream.write(sortedJson);
				fstream.write("\n");
				fstream.close();
			} catch (Exception e) {
			}
		}
	}

	private static void generateObject(Translation translation, JsonObject obj) {
		String identifier = translation.getIdentifier();
		String[] split = identifier.split("\\.");
		String value = translation.getTurkish();
		for (int i = 0; i < split.length; i++) {
			String part = split[i];
			if (i == split.length - 1) {
				obj.addProperty(part, value);
			} else {
				if (!obj.has(part))
					obj.add(part, new JsonObject());
				try {
					obj = obj.get(part).getAsJsonObject();
				} catch (Exception e) {
//						System.out.println(obj);
//						System.out.println(part);
					obj.addProperty(part+"."+split[++i], value);
				}
			}
		}
	}

	private static HashMap<String, ArrayList<Translation>> getAllTranslations() {
		String url = "jdbc:postgresql://localhost:5432/Translations";
		String user = "kuryeApp";
		String password = "kuryeApp_2020?";
		HashMap<String, ArrayList<Translation>> translations = new HashMap<String, ArrayList<Translation>>();

		try (Connection con = DriverManager.getConnection(url, user, password);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT \"module\", identifier, turkish, english\r\n"
						+ "FROM public.translations ORDER BY \"module\", identifier ")) {

			while (rs.next()) {
				String module = rs.getString(1);
				if (!translations.containsKey(module)) {
					translations.put(module, new ArrayList<Translation>());
				}
				translations.get(module)
						.add(new Translation(module, rs.getString(2), rs.getString(3), rs.getString(4)));
			}

		} catch (SQLException ex) {

		}
		return translations;

	}

	public static void listFilesForFolder(final File folder) throws IOException {
		FileWriter myWriter = new FileWriter("asd.csv");
		for (final File fileEntry : folder.listFiles()) {
			if (fileEntry.isDirectory()) {
				listFilesForFolder(fileEntry);
			} else {
				String module = fileEntry.getName().replace(".json", "");
				if (!exceptions.contains(module)) {
					JsonElement element = parser.parse(readFile(fileEntry.getAbsolutePath()));
					getLanguageTuple(element, "");
					for (Entry<String, String> entry : allTuples.entrySet()) {
						myWriter.write(module + ";" + entry.getKey() + ";" + entry.getValue());
						myWriter.write("\n");
					}
				}
				allTuples.clear();
			}
		}
		myWriter.close();
	}

	public static void getLanguageTuple(JsonElement element, String compositeKey) {
		if (element.isJsonObject()) {
			for (Entry<String, JsonElement> entry : element.getAsJsonObject().entrySet()) {
				String newKey = (compositeKey.isEmpty() ? "" : (compositeKey + ".")) + entry.getKey();
				getLanguageTuple(entry.getValue(), newKey);
			}
		} else {
			allTuples.put(compositeKey, element.getAsString());
		}

	}

	public static String readFile(String file) throws IOException {
		String text = new String(Files.readAllBytes(Paths.get(file)), StandardCharsets.UTF_8);
		return text;
	}

}
