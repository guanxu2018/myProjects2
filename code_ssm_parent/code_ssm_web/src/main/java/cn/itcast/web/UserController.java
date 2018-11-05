package cn.itcast.web;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("findById")
    @ResponseBody
    public User findById(int id){
        User user = userService.findById(id);
        System.out.println(user);
        if(user!=null){
            return user;
        }else {
            return new User();
        }

    }
}
