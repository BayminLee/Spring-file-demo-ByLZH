package tdh.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;
import tdh.demo.po.TDepart;
import tdh.framework.dao.hibernate3.HibernateDao;
import tdh.framework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class DepartService {

    @Autowired
    HibernateDao hibernateDao;

    @Autowired
    @Qualifier("HibernateTemplate")
    private HibernateTemplate hibernateTemplate;

    private List<TDepart> DEPART_LIST = new ArrayList<TDepart>();

    /**
     * 获取部门信息
     */
    public void getDepartList() {
//        String hql = "from TDepart where isnull(sfjy,'0')<>'1' order by pxh";
//        DEPART_LIST = hibernateDao.queryForList(hql);
        DEPART_LIST = hibernateTemplate.find("from TDepart where isnull(sfjy,'0')<>'1' order by pxh");
    }

    /**
     * 获取部门下拉框
     *
     * @return depart opt
     */
    public String getDepartOpt() {
        if (DEPART_LIST == null || DEPART_LIST.size() == 0) {
            getDepartList();
        }
        StringBuilder departOpt = new StringBuilder();
        departOpt.append("<option value=\"\"></option>");
        for (TDepart tDepart : DEPART_LIST) {
            String code = StringUtils.trim(tDepart.getBmdm());
            String mc = StringUtils.trim(tDepart.getBmmc());
            departOpt.append("<option value=\"").append(code).append("\">").append(mc).append("</option>");
        }
        return departOpt.toString();
    }
}
