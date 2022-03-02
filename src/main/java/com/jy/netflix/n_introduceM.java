package com.jy.netflix;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

public class n_introduceM {

	public static void n_Calc(HttpServletRequest request) {
		
		int p = Integer.parseInt(request.getParameter("n_introCalcPeople"));
		int m = Integer.parseInt(request.getParameter("n_introCalcMonth"));
		
		String Membership = request.getParameter("n_introCalcMembership");
		
		DecimalFormat f = new DecimalFormat("###,###");

		int calc = 0;
		String calc1 = null;
		String n_calcResult = null;
		
		
		if (Membership.equals("Basic")) {
			calc = (9500 * m) / p;
			calc1 = f.format(calc);
			n_calcResult =  "<h3>" + p + "명의 " + m + "개월 이용요금은 1인당 " + calc1 + "입니다.</h3>";
			
			request.setAttribute("n_calcResult", n_calcResult);
			System.out.println("베이직 선택: " + p + "명->" +  calc1);
			
		} else if (Membership.equals("Standard")) {
			calc = (13500 * m) / p;
			calc1 = f.format(calc);
			n_calcResult = "<h3>" +  p + "명의 " + m + "개월 이용요금은 1인당 " + calc1 + "입니다.</h3>";
			
			request.setAttribute("n_calcResult", n_calcResult);
			System.out.println("스탠다드 선택: " + p + "명->" +  calc1);
			
		} else{
			calc = (17000 * m) / p;
			calc1 = f.format(calc);
			n_calcResult = "<h3>" + p + "명의 " + m + "개월 이용요금은 1인당 " + calc1 + "원 입니다. </h3>";
			
			request.setAttribute("n_calcResult", n_calcResult);
			System.out.println("프리미엄 선택: " + p + "명->" +  calc1);
		}
		
	}

}
