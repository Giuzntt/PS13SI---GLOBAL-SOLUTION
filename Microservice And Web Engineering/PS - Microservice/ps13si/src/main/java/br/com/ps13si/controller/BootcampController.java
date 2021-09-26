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

import br.com.ps13si.model.BootcampModel;
import br.com.ps13si.repository.BootcampRepository;

@Controller
@RequestMapping("/bootcamp")
public class BootcampController {
	
	private static final String BOOTCAMP_FOLDER = "bootcamp/";
	
	@Autowired
	public BootcampRepository bootcampRepository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("bootcampModel") BootcampModel bootcampModel, 
					   Model model) {
		
		if("bootcamp-editar".equals(page)) {
			model.addAttribute("bootcampModel", bootcampRepository.findById(id).get());
		}
		
		return BOOTCAMP_FOLDER + page;
	}

	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("bootcamps", bootcampRepository.findAll());
		return BOOTCAMP_FOLDER +  "bootcamps";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("bootcamp", bootcampRepository.findById(id).get());
		return BOOTCAMP_FOLDER +  "bootcamp-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid BootcampModel bootcampModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			return BOOTCAMP_FOLDER + "bootcamp-novo";
		}
		
		bootcampRepository.save(bootcampModel);
		redirectAttributes.addFlashAttribute("messages", "Bootcamp cadastrado com sucesso!");
		
		return "redirect:/bootcamp";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid BootcampModel bootcampModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			return BOOTCAMP_FOLDER + "bootcamp-editar";
		}
		
		bootcampModel.setId_bootcamp(id);
		bootcampRepository.save(bootcampModel);
		redirectAttributes.addFlashAttribute("messages", "Bootcamp alterado com sucesso!");
		
		return "redirect:/bootcamp";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		bootcampRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Bootcamp excluído com sucesso!");

		return "redirect:/bootcamp";
	}

}

