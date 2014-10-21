/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.iie.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.iie.dao.basedao.BaseDao;
import org.iie.po.TAppeal;
import org.iie.service.AdminAppealService;
import org.iie.vo.Pager;

/**
 *
 * @author lyz
 */
public class AdminAppealServiceImpl implements AdminAppealService {
    
    private BaseDao baseDao;
    
    public BaseDao getBaseDao(){
        return baseDao;
    }
    
    public void setBaseDao(BaseDao baseDao){
        this.baseDao = baseDao;
    }
    
    @Override
    public List<TAppeal> getAll(){
        List<TAppeal> list = new ArrayList<TAppeal>();
        String hql = "from TAppeal";
        list = baseDao.find(hql);
        return list;        
    }
    
    @Override
    public Pager getAllData(int pageNumber, int pageSize) {
        String hql = "from TAppeal";
        Pager page = baseDao.getPager(hql, pageNumber, pageSize);

        return page;

    }
    
    @Override
    public Pager getSelectedData(String query, int pageNumber, int pageSize){
        String hql = "from TAppeal where "+ query;
        Pager page = baseDao.getPager(hql, pageNumber, pageSize);

        return page;
    }
    
}
