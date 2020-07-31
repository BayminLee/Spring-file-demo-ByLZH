package tdh.demo.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;
import tdh.demo.vo.GetUserListVO;
import tdh.framework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * User service
 */
@Service
public class UserService {

    private static final Logger LOGGER = Logger.getLogger(UserService.class);

    /**
     * Jdbc template
     */
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("HibernateTemplate")
    private HibernateTemplate hibernateTemplate;

    /**
     * 获取用户列表
     *
     * @param getUserListVO get user list vo
     * @return user list
     */
    public String getUserList(GetUserListVO getUserListVO) {
        LOGGER.debug("getUserList 入参：" + getUserListVO.toString());
        String name = StringUtils.trim(getUserListVO.getName());
        String depart = StringUtils.trim(getUserListVO.getDepart());

        LOGGER.fatal("fatal msg");
        LOGGER.error("error msg");
        LOGGER.warn("warn msg");
        LOGGER.info("info msg");
        LOGGER.debug("debug msg");
        LOGGER.trace("trace msg");

        StringBuilder sql = new StringBuilder();
        sql.append("SELECT YHDM, YHID, YHXM, YHKL, YHBM, YHXB, PXH FROM T_USER ");

        List<String> param = new ArrayList<String>();
        Integer index = 0;
        if (!"".equals(name)) {
            sql.append("AND YHXM LIKE ? ");
            param.add("%" + name + "%");
        }
        if (!"".equals(depart)) {
            sql.append("AND YHBM = ? ");
            param.add(depart);
        }

        List<Map<String, Object>> userList = new ArrayList<Map<String, Object>>();
        try {
            userList = jdbcTemplate.queryForList(sql.toString().replaceFirst("AND", "WHERE"), param.toArray());
        } catch (Exception e) {
            LOGGER.error("异常：", e);
        }

//        StringBuilder sql = new StringBuilder();
//        sql.append("from TUser u where u.yhxm like ? and yhbm = ?");
//        List<TUser> userList = hibernateTemplate.find(sql.toString(), new Object[] {"%" + name + "%", depart});

        StringBuilder xml = new StringBuilder();
        xml.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?><rows>");
        index = 1;
        for (Map<String, Object> user : userList) {
            xml.append("<row id=\"").append(user.get("YHDM")).append("\">");
            xml.append("<cell>").append(index++).append("</cell>");
            xml.append("<cell>").append(user.get("YHXM")).append("</cell>");
            xml.append("<cell>").append(user.get("YHID")).append("</cell>");
            xml.append("<cell>").append(user.get("YHBM")).append("</cell>");
            xml.append("<cell>").append(user.get("YHXB")).append("</cell>");
            xml.append("</row>");
        }
        xml.append("</rows>");

        return xml.toString();
    }
}
