/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.iie.service.impl;

import java.util.List;
import org.iie.dao.basedao.BaseDao;
import org.iie.po.LwbTopic;
import org.iie.po.TAppeal;
import org.iie.service.ImgService;

/**
 *
 * @author mc
 */
public class ImgServiceImpl implements ImgService{
    
     private BaseDao baseDao;

    public BaseDao getBaseDao() {
        return baseDao;
    }

    public void setBaseDao(BaseDao baseDao) {
        this.baseDao = baseDao;
    }

    @Override
    public void save(TAppeal tAppeal) {
        baseDao.save(tAppeal);
    }

    
}
