package com.kgc.controller;

import com.kgc.pojo.Assets;
import com.kgc.service.AssetsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    AssetsService assetsService;
    @RequestMapping("/")
    public String shouye(){

        return "Sy";
    }
    @RequestMapping("/sel")
    public String sel(Model model){
        List<Assets> list=assetsService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }
    @RequestMapping("/mohu")
    public String mohu(Model model,
            @RequestParam(value = "assetid",required = false,defaultValue = "") String assetid,
            @RequestParam(value = "assettype",required = false,defaultValue = "") String assettype){
        List<Assets> assetsList=assetsService.selecmohu(assetid,assettype);
        model.addAttribute("list",assetsList);
        return "index";
    }

    @RequestMapping("/inser")
    public String inser(){
        return "sel";
    }

    @RequestMapping("/ins")
    public String insertinto(Assets assets){
        assetsService.insert(assets);
        return "redirect:/sel";
    }
}
