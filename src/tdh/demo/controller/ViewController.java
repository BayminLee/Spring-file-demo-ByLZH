package tdh.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import tdh.demo.service.DepartService;

import javax.servlet.http.HttpServletRequest;

/**
 * View controller
 */
@Controller
@RequestMapping
public class ViewController {

    @Autowired
    DepartService departService;

    /**
     * 首页
     *
     * @param request request
     * @return model and view
     */
    @RequestMapping(value = "index.do")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("index");

        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;

        mav.addObject("CONTEXT_PATH", basePath);
        mav.addObject("departOption", departService.getDepartOpt());
        return mav;
    }

    /**
     * 新增页面
     * @param request
     * @return
     */
    @RequestMapping(value = "add.do")
    public ModelAndView add(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("form");
        String yhdm = request.getParameter("yhdm");
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;

        mav.addObject("CONTEXT_PATH", basePath);
        mav.addObject("yhdm", yhdm);
        return mav;
    }

    @RequestMapping(value = "view.do")
    public ModelAndView view(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("view");
        String yhdm = request.getParameter("yhdm");
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;

        mav.addObject("CONTEXT_PATH", basePath);
        mav.addObject("yhdm", yhdm);
        return mav;
    }
}
