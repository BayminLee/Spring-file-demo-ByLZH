package tdh.demo.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import tdh.demo.service.WjService;
import tdh.demo.vo.ComResultVO;

/**
 * Wj controller
 */
@Controller
@RequestMapping("/wj")
public class WjController {

    private static final Logger LOGGER = Logger.getLogger(WjController.class);

    /**
     * Wj service
     */
    @Autowired
    WjService wjService;

    /**
     * 上传文件
     *
     * @param file file
     * @return user list
     */
    @ResponseBody
    @RequestMapping(value = "uploadFile.do")
    public ComResultVO<String> uploadFile(MultipartFile file) {
        try {
            return wjService.uploadFile(file);
        } catch (Exception e) {
            return ComResultVO.error("上传文件异常");
        }
    }
}
