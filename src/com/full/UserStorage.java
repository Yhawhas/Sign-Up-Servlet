package com.full;

import java.util.HashMap;
import java.util.Map;

public class UserStorage {
	public static Map<String, String> userStroageDatabaseMap = new HashMap<String, String>();

	public void addUser(String uname, String upassword) {
		userStroageDatabaseMap.put(uname, upassword);
	}

	public boolean checkUser(String uname, String upassword) {
		if (userStroageDatabaseMap.containsKey(uname)) {
			return upassword.equals(userStroageDatabaseMap.get(uname));
		} else
			return false;
	}

}
