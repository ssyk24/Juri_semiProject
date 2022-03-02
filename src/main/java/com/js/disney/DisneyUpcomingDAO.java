package com.js.disney;

import javax.servlet.http.HttpServletRequest;

public class DisneyUpcomingDAO {

public static void upcomingDetail(HttpServletRequest request) {

		
		request.setAttribute("val", request.getParameter("val"));
		
	}
	
}
