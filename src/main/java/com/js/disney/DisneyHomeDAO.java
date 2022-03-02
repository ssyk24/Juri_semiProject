package com.js.disney;

import javax.servlet.http.HttpServletRequest;

public class DisneyHomeDAO {

	
public static void payCalc(HttpServletRequest request) {
		
		
		String term = request.getParameter("subscribe");
		String person = request.getParameter("person");
		int result = 0;
		
		if (term.equals("mon")) {
			
			request.setAttribute("term", "ÇÑ ´Þ");
			
			
			if (person.equals("1")) {
				result = 9900 / 1;
			} else if (person.equals("2")) {
				result = 9900 / 2;
			} else if (person.equals("3")) {
				result = 9900 / 3;
			} else {
				result = 9900 / 4;
			}
			
			request.setAttribute("pay", result);
			
			
		} else {
			
			request.setAttribute("term", "1³â");
			
			if (person.equals("1")) {
				result = 99000 / 1;
			} else if (person.equals("2")) {
				result = 99000 / 2;
			} else if (person.equals("3")) {
				result = 99000 / 3;
			} else {
				result = 99000 / 4;
			}
			
			request.setAttribute("pay", result);
			
		}  
		
	}
	
}
