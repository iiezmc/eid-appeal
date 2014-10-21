/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.iie.service;

import java.util.List;
import org.iie.po.LwbTopic;
import org.iie.po.TAppeal;

/**
 *
 * @author zmc
 */
public interface ImgService {

    public void save(TAppeal tAppeal);
    
    public String saveToPK(TAppeal tAppeal);
    
    public TAppeal findByID(String id);
}
