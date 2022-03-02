package com.jh.wavve;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

public class WavvePay {

	public static void calc(HttpServletRequest request) {
		
		String people = request.getParameter("people");
		String type = request.getParameter("type");
		String month = request.getParameter("month");
		
		System.out.println(people);
		System.out.println(type);
		System.out.println(month);
		
		int people1 = Integer.parseInt(people);
		int month1 = Integer.parseInt(month);
		
		int money = 0;
		
		System.out.println(people1);
		System.out.println(month1);
		
		if (type.equals("베이직")&&people1==1) {
			money = (7900 * month1) / people1;
		}
		else if (type.equals("스탠다드")&&people1<=2) {
			money = (10900 * month1) / people1;
		}
		else if (type.equals("베이직")&& people1>=2) {
			money = 0;
		}
		else if (type.equals("스탠다드") && people1>=3) {
			money = 0;
		}
		else {
			money = (13900 * month1) / people1;
		}
			
		DecimalFormat df = new DecimalFormat("###,###");
		String money1 = df.format(money);
		
		System.out.println(money);
		
		request.setAttribute("people", people);
		request.setAttribute("type", type);
		request.setAttribute("month", month);
		request.setAttribute("money", money1);
		
		}
	}

