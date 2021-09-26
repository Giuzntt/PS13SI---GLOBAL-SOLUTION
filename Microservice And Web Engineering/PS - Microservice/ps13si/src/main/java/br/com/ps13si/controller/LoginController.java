package br.com.ps13si.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ps13si.model.CadastroModel;
import br.com.ps13si.repository.CadastroRepository;

@Controller
public class LoginController {
	
	@Autowired
	public CadastroRepository cadastroRepository;
	
	@GetMapping("/")
	public String exibirLogin(CadastroModel cadastroModel) {
		
		return "login";
		
	}
	
	@PostMapping("/efetuarLogin")
	public String efetuarLogin(@Valid CadastroModel cadastroModel, BindingResult bindingResult, RedirectAttributes ra, HttpSession session, Model model) {
		
		cadastroModel = this.cadastroRepository.findByEmailAndSenha(cadastroModel.getEmail(), cadastroModel.getSenha());
		
		if(bindingResult.hasErrors()) {
			ra.addFlashAttribute("mensagem", "Preencha os campos obrigatórios!");
			return "redirect:/";
		}
		
		if (cadastroModel != null){
			session.setAttribute("usuarioLogado", cadastroModel);
			return "redirect:/inicio";
		} else {
			ra.addFlashAttribute("mensagem", "E-mail e/ou Senha inválidos!");
			return "redirect:/";
		}
		
	}
	
}
