package tdh.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tdh.demo.service.UserService;
import tdh.demo.vo.GetUserListVO;

/**
 * User controller
 */
@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * User service
     */
    @Autowired
    UserService userService;

    /**
     * 获取用户列表
     *
     * @param getUserListVO get user list vo
     * @return user list
     */
    @ResponseBody
    @RequestMapping(value = "getUserList.do", produces = "application/xml; charset=UTF-8")
    public String getUserList(GetUserListVO getUserListVO) {
        return userService.getUserList(getUserListVO);
    }
}
