package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.Implement.WelcomeServiceImpl;
import com.quinnnorris.ssm.service.WelcomeService;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.HeadpUtil;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.tags.HtmlEscapeTag;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

/**
 * Title: HomeController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/23 下午6:06 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class HomeController extends BaseController {

    @Autowired
    WelcomeServiceImpl welcomeService;

    @RequestMapping("/welcome")
    public String toWelcomePage(Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")) return "login";
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        welcomeService.getWelcomeModel(model, userCustom);
        return "welcome";
    }

    @RequestMapping(value = "/changeHeadp",method = RequestMethod.POST)
    @ResponseBody
    public BaseJson changingHeadp(@RequestParam MultipartFile headp, HttpSession httpSession) {
        String headPath = "/Users/quinn_norris/Desktop/PROJECT/Learning/QuinnNorris/web/headp";
        String fileStr = HeadpUtil.insertHeadp(headp, headPath);
        UserCustom userCustom = new UserCustom();
        userCustom.setHeadp(fileStr);
        userCustom.setPhone((String) (httpSession.getAttribute("phone")));
        welcomeService.updateUserHeadp(userCustom, httpSession);
        return new BaseJson();
    }

}
