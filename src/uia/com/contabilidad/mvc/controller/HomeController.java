package uia.com.contabilidad.mvc.controller;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import uia.com.contabilidad.ContabilidadUIA;
import uia.com.contabilidad.mvc.model.User;
import uia.com.presentacion.ClienteJSP;
import uia.com.presentacion.Singleton;

@Controller
public class HomeController {
	
	private ContabilidadUIA dao = Singleton.getInstance();

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Home Page Requested, locale = " + locale);
		
		model.addAttribute("clientes", getListaClientes());

		return "verClientes";
	}

	@ModelAttribute("listaClientes")
	public ArrayList<ClienteJSP> getListaClientes(){
		return this.dao.getListaProveedores();
	}
	
	
}
