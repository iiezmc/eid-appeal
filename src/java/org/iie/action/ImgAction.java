/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.iie.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletOutputStream;
import org.apache.commons.io.FileUtils;
import org.iie.action.baseaction.BaseAction;
import org.iie.po.TAppeal;
import org.iie.service.ImgService;

/**
 * 上传图片，以blob格式存储；读取图片展示
 *
 * @author zmc
 */
public class ImgAction extends BaseAction {

    private ImgService imgService;
    private File uploadFile;//此属性对应于表单中文件字段的名称
    //下面的这两个属性的命名必须遵守上定的规则，即为"表单中文件字段的名称" + "相应的后缀"    
    private String uploadFileContentType; // 得到上传的文件的数据类型,    
    private String uploadFileFileName; // 得到上传的文件的名称    
    private ServletOutputStream sout;//二进制流可以直接在jsp页面显示  
    private String message;

    // 可以定义成数组类型，也可以定义成list  
    private File[] uploadFiles; // 得到上传的文件,此属性对应于表单中文件字段的名称  
    // 下面的这两个属性的命名必须遵守上定的规则，即为"表单中文件字段的名称" + "相应的后缀"  
    private String[] uploadFilesContentType; // 得到上传的文件的数据类型,  
    private String[] uploadFilesFileName; // 得到上传的文件的名称  

    public String upload() {
        if (uploadFile != null) {
            try {
                TAppeal appeal = new TAppeal();
                byte[] imgArray = FileUtils.readFileToByteArray(uploadFile);
                appeal.setIdcardPhoto(imgArray);
                appeal.setRequestTime(new Date());
                String pk = imgService.saveToPK(appeal);
                super.getSession().setAttribute(SESSION_APPEAL_PK, pk);
                message = "上传成功";
            } catch (IOException ex) {
                ex.printStackTrace();
                return ERROR;
            } catch (Exception ex) {
                ex.printStackTrace();
                return ERROR;
            }
        } else {
            message = "上传文件为空！";
        }
        return SUCCESS;
    }

    public String uploads() throws IOException, Exception {
        if (uploadFiles != null) {
            for (int i = 0; i < uploadFiles.length; i++) {
                TAppeal appeal = new TAppeal();
                byte[] imgArray = FileUtils.readFileToByteArray(uploadFiles[i]);
                appeal.setIdcardPhoto(imgArray);
                appeal.setRequestTime(new Date());
                String pk = imgService.saveToPK(appeal);
                super.getSession().setAttribute(SESSION_APPEAL_PK, pk);
            }
        } else {
//            message = "上传文件为空！";
            return INPUT;
        }
        return SUCCESS;
    }

    public String show() throws Exception {
        String pk = super.getSession().getAttribute(SESSION_APPEAL_PK).toString();
        TAppeal appeal = imgService.findByID(pk);
        byte[] idcardPhoto = appeal.getIdcardPhoto();

        sout = super.getResponse().getOutputStream();
        sout.write(idcardPhoto);
        sout.flush();
        sout.close();

        return null;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadFileContentType() {
        return uploadFileContentType;
    }

    public void setUploadFileContentType(String uploadFileContentType) {
        this.uploadFileContentType = uploadFileContentType;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    public ImgService getImgService() {
        return imgService;
    }

    public void setImgService(ImgService imgService) {
        this.imgService = imgService;
    }

    public ServletOutputStream getSout() {
        return sout;
    }

    public void setSout(ServletOutputStream sout) {
        this.sout = sout;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public File[] getUploadFiles() {
        return uploadFiles;
    }

    public void setUploadFiles(File[] uploadFiles) {
        this.uploadFiles = uploadFiles;
    }

    public String[] getUploadFilesContentType() {
        return uploadFilesContentType;
    }

    public void setUploadFilesContentType(String[] uploadFilesContentType) {
        this.uploadFilesContentType = uploadFilesContentType;
    }

    public String[] getUploadFilesFileName() {
        return uploadFilesFileName;
    }

    public void setUploadFilesFileName(String[] uploadFilesFileName) {
        this.uploadFilesFileName = uploadFilesFileName;
    }

}
