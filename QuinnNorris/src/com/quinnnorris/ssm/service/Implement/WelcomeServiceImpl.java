package com.quinnnorris.ssm.service.Implement;

import com.quinnnorris.ssm.bean.CalendarCustom;
import com.quinnnorris.ssm.bean.TaskCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.CalendarCustomMapper;
import com.quinnnorris.ssm.mapper.TaskCustomMapper;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.WelcomeService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Title: WelcomeServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/23 下午9:54 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("welcomeService")
public class WelcomeServiceImpl implements WelcomeService {

    @Autowired
    UserCustomMapper userCustomMapper;

    @Autowired
    CalendarCustomMapper calendarCustomMapper;

    @Autowired
    TaskCustomMapper taskCustomMapper;

    @Override
    public BaseJson getWelcomeModel(Model model, UserCustom userCustom) {
        UserCustom custom = userCustomMapper.selectUserByPhone(userCustom);
        CalendarCustom calendarCustom = new CalendarCustom();
        calendarCustom.setPhone(custom.getPhone());
        int counts = calendarCustomMapper.getAllCalByPhone(calendarCustom);
        TaskCustom taskCustom = new TaskCustom();
        taskCustom.setPhone(custom.getPhone());
        taskCustom.setStartPos(0);
        taskCustom.setPageSize(3);
        taskCustom.setTypes(1);
        List<TaskCustom> taskCustoms = taskCustomMapper.selectTsakByPhoneTypeLimit(taskCustom);
        long days = ((((new Date()).getTime()) - custom.getRegtime().getTime()) / 86400000) + 1;
        model.addAttribute("days",days+"");
        model.addAttribute("logintime",userCustom.getLogintime());
        model.addAttribute("username",custom.getUsername());
        model.addAttribute("cals",counts+"");
        model.addAttribute("headp",custom.getHeadp());
        //haoyou
        //dongtai
        //xiangmu
        model.addAttribute("tasks",taskCustoms);
        return new BaseJson(custom);
    }

    @Override
    public void updateUserHeadp(UserCustom userCustom, HttpSession httpSession) {
        userCustomMapper.updateUserHeadp(userCustom);
        httpSession.setAttribute("headp", userCustom.getHeadp());
    }
}
