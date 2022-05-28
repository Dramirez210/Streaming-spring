package com.dramirez.streamingCRUD.controller;

import com.dramirez.streamingCRUD.interfacesService.IsuscriptorService;
import com.dramirez.streamingCRUD.modelo.Suscriptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping
public class Controlador {

    @Autowired
    private IsuscriptorService service;

    @GetMapping("/listar")
    public String listar(Model model){
        List<Suscriptor> suscriptores=service.listar();
        model.addAttribute("suscriptores", suscriptores);
        return "index";
    }

    @GetMapping("/new")
    public String agregar(Model model){
        model.addAttribute("suscriptor", new Suscriptor());
        return "agregar";
    }

    @PostMapping("/save")
    public String save(@Valid Suscriptor s, Model model){
        service.save(s);
        return "redirect:/listar";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable int id, Model model){
        Optional<Suscriptor>suscriptor=service.listarId(id);
        model.addAttribute("suscriptor", suscriptor);
        return "agregar";
    }

    @GetMapping("/eliminar/{id}")
    public String delete(Model model, @PathVariable int id){
        service.delete(id);
        return "redirect:/listar";
    }

}
