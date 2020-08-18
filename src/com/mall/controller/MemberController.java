package com.mall.controller;//User: linxifan  Date: 2020/8/17  Time: 13:42

import com.mall.entity.Integral;
import com.mall.entity.Member;
import com.mall.entity.User;
import com.mall.service.MemberService;
import com.mall.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;


    int NouseNum = 1;
    //通过页码查询积分获取列表
    @RequestMapping("/selItgByPageNum/{pageNum}")
    public String selByPageNum(Model model, HttpSession session , @PathVariable Integer pageNum, @RequestParam(defaultValue = "5") Integer pageSize) {
        NouseNum = pageNum;//记录当前页码;
        User user = (User) session.getAttribute("user");
        int mid=user.getMid();
        Result.IntegralResult integralResult = memberService.selItgByPageNum(mid, pageNum, pageSize);
        System.out.println("integralResult:"+integralResult);
        //获取积分表
        long NouseTotal=integralResult.getNouseTotal();
        int NouseNum = integralResult.getNousePageNum();
        List<Integral> NouseIntegrals = integralResult.getNouseIntegrals();
        Double NouseItg=0.0;
        Double IsuseItg=0.0;
        if (pageNum == 1){
            for (int i = 0; i < NouseIntegrals.size(); i++) {
                NouseItg += NouseIntegrals.get(i).getI_record();
            }
            List<Integral> IsuseIntegrals = integralResult.getIsuseIntegrals();
            for (int i = 0; i < IsuseIntegrals.size(); i++) {
                IsuseItg += IsuseIntegrals.get(i).getI_record();
            }
            NouseItg -=  IsuseItg;
            session.setAttribute("NouseItg",NouseItg);
        }
        model.addAttribute("NouseTotal",NouseTotal);
        model.addAttribute("NouseNum",NouseNum);
        model.addAttribute("NouseIntegrals",NouseIntegrals);


        //是否为会员
        Member member = memberService.showIntergral(mid);
        model.addAttribute("member",member);

        return "user_integral";
    }

    int IsuseNum = 1;
    //通过页码查询积分使用列表
    @RequestMapping("/selUseItgByPageNum/{pageNum}")
    public String selUseItgByPageNum(Model model, HttpSession session , @PathVariable Integer pageNum, @RequestParam(defaultValue = "5") Integer pageSize) {
        IsuseNum = pageNum;//记录当前页码;
        User user = (User) session.getAttribute("user");
        int mid=user.getMid();
        Result.IntegralResult integralResult = memberService.selItgByPageNum(mid, pageNum, pageSize);
        //使用积分表
        List<Integral> IsuseIntegrals = integralResult.getIsuseIntegrals();
        Double IsuseItg=0.0;
        if (pageNum == 1) {

            for (int i = 0; i < IsuseIntegrals.size(); i++) {
                IsuseItg += IsuseIntegrals.get(i).getI_record();
            }
            session.setAttribute("IsuseItg",IsuseItg);
        }
        long IsuseTotal=integralResult.getIsuseTotal();
        int IsuseNum = integralResult.getIsusePageNum();
        model.addAttribute("IsuseTotal",IsuseTotal);
        model.addAttribute("IsuseNum",IsuseNum);
        model.addAttribute("IsuseIntegrals",IsuseIntegrals);


        //是否为会员
        Member member = memberService.showIntergral(mid);
        model.addAttribute("member",member);
        return "user_UseIntegral";
    }

    //查询是否为会员
    @RequestMapping(value = "/showIntergral")
    public String showIntergral(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        int mid=user.getMid();
        Member member = memberService.showIntergral(mid);
        model.addAttribute("member",member);
        return "user_integral";
    }
}
