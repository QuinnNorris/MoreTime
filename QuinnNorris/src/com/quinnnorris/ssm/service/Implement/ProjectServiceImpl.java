package com.quinnnorris.ssm.service.Implement;

import com.quinnnorris.ssm.bean.ProinfoCustom;
import com.quinnnorris.ssm.bean.ProjectCustom;
import com.quinnnorris.ssm.bean.SubjobCustom;
import com.quinnnorris.ssm.mapper.ProinfoCustomMapper;
import com.quinnnorris.ssm.mapper.ProjectCustomMapper;
import com.quinnnorris.ssm.mapper.SubjobCustomMapper;
import com.quinnnorris.ssm.service.ProjectService;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * Title: ProjectServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/2 下午5:21 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("projectServiceImpl")
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    ProjectCustomMapper projectCustomMapper;

    @Autowired
    ProinfoCustomMapper proinfoCustomMapper;

    @Autowired
    SubjobCustomMapper subjobCustomMapper;

    @Override
    public BaseJson createNewProject(ProjectCustom projectCustom) {
        List<ProjectCustom> customList = projectCustomMapper.selectProByPhoneTypes(projectCustom);
        if (customList.size() >= 4) return new BaseJson("1");
        String pronumbers = "";
        try {
            pronumbers = DateUtil.continueDateFormat(new Date());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        pronumbers += projectCustom.getPhone().substring(7);
        projectCustom.setPronumber(pronumbers.substring(3));
        projectCustomMapper.insertPro(projectCustom);
        BaseJson baseJson = new BaseJson("0");
        baseJson.setObject(projectCustom.getPronumber());
        return baseJson;
    }

    @Override
    public void createNewProinfo(ProinfoCustom proinfoCustom) {
        proinfoCustomMapper.insertProinfo(proinfoCustom);
    }

    @Override
    public BaseJson selectOnePros(ProjectCustom projectCustom) {
        List<ProjectCustom> customList = projectCustomMapper.selectProByPhoneTypes(projectCustom);
        BaseJson baseJson = new BaseJson();
        baseJson.setBeanObject(customList);
        baseJson.setObject(customList.size());
        return baseJson;
    }

    @Override
    public BaseJson getPromessage(String pronumber, Model model, HttpSession httpSession) {
        ProjectCustom projectCustom = new ProjectCustom();
        projectCustom.setPhone((String) httpSession.getAttribute("phone"));
        projectCustom.setPronumber(pronumber);
        ProjectCustom custom = projectCustomMapper.selectProByPronumber(projectCustom);
        model.addAttribute("color", custom.getBarcolor());
        try {
            model.addAttribute("begtime", DateUtil.proshowDateFormat(custom.getBegtime()));
            model.addAttribute("endtime", DateUtil.proshowDateFormat(custom.getEndtime()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        model.addAttribute("info", custom.getInfo());
        model.addAttribute("name", custom.getProname());
        model.addAttribute("phone", custom.getPhone());
        ProinfoCustom proinfoCustom = new ProinfoCustom();
        proinfoCustom.setPhone((String) httpSession.getAttribute("phone"));
        proinfoCustom.setPronumber(pronumber);
        ProinfoCustom custom1 = proinfoCustomMapper.selectProinfoByPhonePronumber(proinfoCustom);
        model.addAttribute("forgetinfo", custom1.getForgetinfo());
        model.addAttribute("count", custom1.getProcount());
        model.addAttribute("toteltimes", custom1.getToteltimes());
        String names = custom1.getPersons();
        String[] spiltnames = names.split("#");
        for (String s : spiltnames)
            System.err.println(s);
        model.addAttribute("persons", spiltnames);
        return new BaseJson();
    }

    @Override
    public BaseJson addNewProcess(SubjobCustom subjobCustom) {
        subjobCustomMapper.insertSubjob(subjobCustom);
        return new BaseJson("0");
    }

    @Override
    public void endProcess(ProjectCustom projectCustom) {
        projectCustomMapper.updateTypesByPhone(projectCustom);
    }

    @Override
    public void delProcess(ProjectCustom projectCustom) {
        projectCustomMapper.updateTypesByPhone(projectCustom);
    }

    @Override
    public BaseJson getProcessdoing(String toteltimes, SubjobCustom subjobCustom) {
        List<SubjobCustom> customList = subjobCustomMapper.selectSubjobByPhonePronumber(subjobCustom);
        double toteltimes_ser = 0;
        for (int i = 0; i < customList.size(); i++)
            toteltimes_ser += customList.get(i).getDotimes();
        int pre = (int)((toteltimes_ser / Double.parseDouble(toteltimes))*100);
        return new BaseJson(pre);
    }
}
