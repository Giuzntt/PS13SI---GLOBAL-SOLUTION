package br.com.ps13si.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ps13si.model.CadastroModel;
import br.com.ps13si.repository.CadastroRepository;

@Controller
@RequestMapping("/cadastro")
public class CadastroController {
	
	private static final String CADASTRO_FOLDER = "cadastro/";
	
	@Autowired
	public CadastroRepository cadastroRepository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("cadastroModel") CadastroModel cadastroModel, 
					   Model model) {
		
		if("cadastro-editar".equals(page)) {
			model.addAttribute("cadastroModel", cadastroRepository.findById(id).get());
		}
		
		return CADASTRO_FOLDER + page;
	}

	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("cadastros", cadastroRepository.findAll());
		return CADASTRO_FOLDER +  "cadastros";
	}
	
	@PostMapping()
	public String save(@Valid CadastroModel cadastroModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			return CADASTRO_FOLDER + "cadastro-novo";
		}
		
		cadastroRepository.save(cadastroModel);
		redirectAttributes.addFlashAttribute("messages", "Cadastrado adicionado com sucesso!");
		
		return "redirect:/cadastro";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid CadastroModel cadastroModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			return CADASTRO_FOLDER + "cadastro-editar";
		}
		
		cadastroModel.setId(id);
		cadastroRepository.save(cadastroModel);
		redirectAttributes.addFlashAttribute("messages", "Cadastro alterado com sucesso!");
		
		return "redirect:/cadastro";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		cadastroRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Cadastro excluído com sucesso!");

		return "redirect:/cadastro";
	}

}
