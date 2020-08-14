package com.mall.controller;

//User:linxifan Date:2020/8/11Time:18:55

import com.mall.entity.Adress;
import com.mall.entity.User;
import com.mall.service.AdressService;
import com.mall.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/adress")
public class AdressController {
    @Autowired
    private AdressService adressService;

    int num = 1;
    //通过页码查询地址列表
    @RequestMapping("/selByPageNum/{pageNum}")
    public String selByPageNum(Model model,HttpSession session ,@PathVariable Integer pageNum, @RequestParam(defaultValue = "4") Integer pageSize){
        num = pageNum;//记录当前页码;
        User user = (User) session.getAttribute("user");
        //查询返回结果集
        Result result = adressService.selByPageNum(user.getUid(),pageNum, pageSize);
        long total=result.getTotal();
        int PageNum = result.getPageNum();
        model.addAttribute("total",total);
        model.addAttribute("pageNum",PageNum);
        model.addAttribute("adressList",result.getAdressList());
        return "user_adress";
    }
    //下一页pageNext
    public String pageNext(){
        num++;
        return "selByPageNum/"+num;
    }
    //下一页pagePreviouss
    public String pagePre (){
        num--;
        if (num <=0 ){
            num=1;
        }
        return "selByPageNum/"+num;
    }

    //添加地址
    @RequestMapping(value = "/addAdress",produces = "text/html;charset=utf-8")
    @ResponseBody
    /*{"adname":adname,"uid":uid,"province":province,"city":city,
                    "area":area,"detadress":detadress,"phone":phone,"postcode":postcode},*/
    public String addAdress(String adname,int uid,String province,String city,String area,String detadress,String phone,String postcode){
        Adress adress = new Adress();
        adress.setAdname(adname);
        adress.setUid(uid);
        adress.setProvince(province);
        adress.setCity(city);
        adress.setArea(area);
        adress.setDetadress(detadress);
        adress.setPhone(phone);
        adress.setPostcode(postcode);
        int i = adressService.addAdress(adress);
        return Integer.toString(i);
    }
    //跳转修改地址页面
    @RequestMapping("/selUpdateAdress/{aid}")
    public String selUpdateAdress(@PathVariable int aid,HttpSession session){
        Adress adress = adressService.selUpdateAdress(aid);
        session.setAttribute("adress",adress);
         return "adress_Update";

    }
    //修改地址
    @RequestMapping(value = "/UpdateAdress",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String UpdateAdress(int aid,String adname,String province,String city,String area,String detadress,String phone,String postcode){
        Adress adress = new Adress();
        adress.setAid(aid);
        adress.setAdname(adname);
        adress.setProvince(province);
        adress.setCity(city);
        adress.setArea(area);
        adress.setDetadress(detadress);
        adress.setPhone(phone);
        adress.setPostcode(postcode);
        int i = adressService.UpdateAdress(adress);
        System.out.println("i:"+i);
        return Integer.toString(i);
    }
    //删除地址
    @RequestMapping(value = "/delAdress",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String delAdress(String aid){
        int i = adressService.delAdress(Integer.parseInt(aid));
        return Integer.toString(i);
//        if (i==1){
//            return "删除地址成功";
//        }else {
//            return "删除地址失败";
//        }
    }
}
