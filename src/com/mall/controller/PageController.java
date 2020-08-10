package com.mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 孟宇
 * @create 2020/8/10 - 11:08
 */
@Controller
public class PageController {
    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
