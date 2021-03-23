package uia.com.contabilidad.mvc.controller;

import java.text.DateFormat;
import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class ComprasController {

	@RequestMapping(value = "/cuentas", method = RequestMethod.GET)
	public String cargaCuentas(@RequestParam String clienteName) 
	{
		System.out.println("Pagina Cuentas solicitada, locale = ");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		String formattedDate = dateFormat.format(date);

		//model.addAttribute("serverTime", formattedDate);

		return "verCuentas";
	}
	
}
