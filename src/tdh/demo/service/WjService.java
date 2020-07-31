package tdh.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import tdh.demo.po.Temp;
import tdh.demo.vo.ComResultVO;

import java.util.UUID;

/**
 * Wj service
 */
@Service
public class WjService {

    @Autowired
    @Qualifier("HibernateTemplate")
    private HibernateTemplate hibernateTemplate;

    /**
     * 文件上传
     *
     * @param file file
     * @return the com result vo
     * @throws Exception exception
     */
    @Transactional
    public ComResultVO<String> uploadFile(MultipartFile file) throws Exception{
        byte[] bytes = file.getBytes();
        Temp temp = new Temp();
        temp.setId(UUID.randomUUID().toString().replaceAll("-",""));
        temp.setNr(bytes);
        hibernateTemplate.save(temp);

        Temp temp1 = new Temp();
        temp1.setId(UUID.randomUUID().toString());
        temp1.setNr(bytes);
        hibernateTemplate.save(temp1);
        return ComResultVO.ok(temp.getId());
    }
}
