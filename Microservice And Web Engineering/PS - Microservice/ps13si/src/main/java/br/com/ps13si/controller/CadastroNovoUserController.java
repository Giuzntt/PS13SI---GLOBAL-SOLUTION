package br.com.ps13si.controller;

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
public class CadastroNovoUserController {

	@Autowired
	public CadastroRepository cadastroRepository;
	
	@GetMapping("/cadastro-novo-user")
	public String exibirCadastro(CadastroModel cadastroModel) {
		
		return "cadastro-novo-user";
		
	}
	
	@PostMapping("/cadastrar-usuario")
	public String save(@Valid CadastroModel cadastroModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("cadastros", cadastroRepository.findAll());
			return "cadastro-novo-user";
		}
		
		cadastroRepository.save(cadastroModel);
		redirectAttributes.addFlashAttribute("mensagem", "Cadastrado adicionado com sucesso!");
		
		return "redirect:/";
	}
	
}
