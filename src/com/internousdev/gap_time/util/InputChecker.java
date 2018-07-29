package com.internousdev.gap_time.util;

public class InputChecker {

	public static boolean length(String value, int min, int max){
		return value.length() < min || value.length() > max;
	}
}
