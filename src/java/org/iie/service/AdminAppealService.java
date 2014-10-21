/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.iie.service;

import java.util.List;
import org.iie.po.TAppeal;
import org.iie.vo.Pager;
/**
 *
 * @author lyz
 */
public interface AdminAppealService {
    
    public abstract List<TAppeal> getAll();
    
    public abstract Pager getAllData(int pageNumber, int pageSize);
    
    public abstract Pager getSelectedData(String query, int pageNumber, int pageSize);
}
