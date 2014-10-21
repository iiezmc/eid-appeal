/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.iie.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.iie.action.baseaction.BaseAction;
import org.iie.po.TAppeal;
import org.iie.service.AdminAppealService;
import org.iie.vo.Pager;

/**
 *
 * @author lyz
 */
public class AdminAppealAction extends BaseAction{
    
    private AdminAppealService adminAppealService;
    private String page;
    private String rows;
    private String startTime;
    private String endTime;
    private String userName;
    private String idcard;
    private String appealNumber;
    private String status;
    private Map<String, Object> map;
    private String message;
    private String errorMsg;

    public String list() {
        int intPage = Integer.parseInt((page == null || page == "0") ? "1":page);
        int number = Integer.parseInt((rows == null || rows == "0") ? "10":rows);

        map = new HashMap<String, Object>();
        Pager pager = new Pager();
        
        try{
            String query = (String) this.getSession(SESSION_ADMIN_QUERY);
            if(query != null && !query.isEmpty()){
                pager = adminAppealService.getSelectedData(query, intPage, number);
            }else{
                pager = adminAppealService.getAllData(intPage, number);
            }
    //        List<TAppeal> ls = adminAppealService.getAll();
            map.put("rows", pager.getElements());
            map.put("total", pager.getTotalRows());
        }catch (Exception ex){
            ex.printStackTrace();
            message = "查询出现错误！";
        }
        return SUCCESS;
    }
    
    public String list_query(){
        String query = "";
        StringBuilder sb = new StringBuilder();
        boolean has_header = false;
        
        if(!appealNumber.isEmpty()){
            if(has_header){
                sb.append("' and appealNumber = '");
            }
            else{
                sb.append(" appealNumber = '");
                has_header = true;
            }
            sb.append(appealNumber);
        }
        
        if(!idcard.isEmpty()){
            if(has_header){
                sb.append("' and idcard = '");
            }
            else{
                sb.append(" idcard = '");
                has_header = true;
            }
            sb.append(idcard);            
        }
        
        if(!userName.isEmpty()){
            if(has_header){
                sb.append("' and name = '");
            }
            else{
                sb.append(" name = '");
                has_header = true;
            }
            sb.append(userName);            
        }
        
        if(!status.isEmpty()){
            if(has_header){
                sb.append("' and status = '");
            }
            else{
                sb.append(" status = '");
                has_header = true;
            }
            sb.append(status);            
        }
        
        if(!startTime.isEmpty()){
            if(has_header){
                sb.append("' and requestTime > '");
            }
            else{
                sb.append(" requestTime > '");
                has_header = true;
            }
            sb.append(startTime);                            
        }
        
        if(!endTime.isEmpty()){
            if(has_header){
                sb.append("' and requestTime < '");
            }
            else{
                sb.append(" requestTime < '");
                has_header = true;
            }
            sb.append(endTime);                            
        }
        
        if(has_header){
            sb.append("'");
            query = sb.toString();
            try{
                this.setSession(SESSION_ADMIN_QUERY, query);
            }catch(Exception ex) {
                message = "查询出现错误！";
                return SUCCESS;
            }
        }
        
        else{
            try{
                this.setSession(SESSION_ADMIN_QUERY, "");
            }catch(Exception ex) {
                message = "查询出现错误！";
                return SUCCESS;
            }
        }
        
        return SUCCESS;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getAppealNumber() {
        return appealNumber;
    }

    public void setAppealNumber(String appealNumber) {
        this.appealNumber = appealNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getRows() {
        return rows;
    }

    public void setRows(String rows) {
        this.rows = rows;
    }

    public AdminAppealService getAdminAppealService() {
        return adminAppealService;
    }

    public void setAdminAppealService(AdminAppealService adminAppealService) {
        this.adminAppealService = adminAppealService;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }
    
}
