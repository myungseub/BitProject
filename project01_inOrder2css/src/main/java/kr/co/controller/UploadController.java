package kr.co.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import kr.co.util.MediaUtils;
import kr.co.util.UploadFileUtils;

@Controller
public class UploadController {

  private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

  @Resource(name = "uploadPath")
  private String uploadPath;

//  @RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
//  public void uploadForm() {
//  }
//
//  @RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
//  public String uploadForm(MultipartFile file, Model model) throws Exception {
//
//    logger.info("originalName: " + file.getOriginalFilename());
//    logger.info("size: " + file.getSize());
//    logger.info("contentType: " + file.getContentType());
//
//    String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
//
//    model.addAttribute("savedName", savedName);
//
//    return "uploadResult";
//  }

//  @RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
//  public void uploadAjax() {
//  }

  
  
  
  @ResponseBody
  @RequestMapping(value ="/uploadAjax", method=RequestMethod.POST, 
                  produces = "text/plain;charset=UTF-8")
  public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
	    
	  	
    logger.info("1originalName: " + file.getOriginalFilename());
    
    String formatName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
    
    if(MediaUtils.getMediaType(formatName) == null){
        return 
        	      new ResponseEntity<>(
        	    		  HttpStatus.BAD_REQUEST);
    	
    }
   
    return 
      new ResponseEntity<>(
          UploadFileUtils.uploadFile(uploadPath, 
                file.getOriginalFilename(), 
                file.getBytes()), 
          HttpStatus.CREATED);
  }
  
  
  
  
//  @ResponseBody
//  @RequestMapping(value="/fileCheck", method=RequestMethod.POST)
//  public ResponseEntity<String> fileCheck(MultipartFile file) throws Exception{
//	  
//	    logger.info("2originalName: " + file.getOriginalFilename());
//	    
//	    String formatName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
//	    
//	    if(MediaUtils.getMediaType(formatName) == null){
//	        return 
//	        	      new ResponseEntity<>(HttpStatus.OK);
//	    	
//	    }
//	    return 
//	    		new ResponseEntity<>(HttpStatus.OK);
//	    
//  }

    
  @ResponseBody
  @RequestMapping(value="/deleteFile", method=RequestMethod.POST)
  public ResponseEntity<String> deleteFile(String fileName){
    
    logger.info("delete file: "+ fileName);
    
    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
    
    MediaType mType = MediaUtils.getMediaType(formatName);
    
    if(mType != null){      
      
      String front = fileName.substring(0,12);
      String end = fileName.substring(14);
      new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
    }
    
    new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
    
    
    return new ResponseEntity<String>("deleted", HttpStatus.OK);
  }  
  
//  @ResponseBody
//  @RequestMapping(value="/deleteAllFiles", method=RequestMethod.POST)
//  public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files){
//    
//    logger.info("delete all files: "+ Arrays.toString(files));
//    
//    if(files == null || files.length == 0) {
//      return new ResponseEntity<String>("deleted", HttpStatus.OK);
//    }
  
//    for (String fileName : files) {
//      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
//      
//      MediaType mType = MediaUtils.getMediaType(formatName);
//      
//      if(mType != null){      
//        
//        String front = fileName.substring(0,12);
//        String end = fileName.substring(14);
//        new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
//      }
//      
//      new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
//      
//    }
//    return new ResponseEntity<String>("deleted", HttpStatus.OK);
//  }  

}
//  @ResponseBody
//  @RequestMapping(value = "/uploadAjax", 
//                 method = RequestMethod.POST, 
//                 produces = "text/plain;charset=UTF-8")
//  public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {
//
//    logger.info("originalName: " + file.7());
//    logger.info("size: " + file.getSize());
//    logger.info("contentType: " + file.getContentType());
//
//    return 
//        new ResponseEntity<>(file.getOriginalFilename(), HttpStatus.CREATED);
//  }

// @RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
// public void uploadForm(MultipartFile file, Model model) throws Exception {
//
// logger.info("originalName: " + file.getOriginalFilename());
// logger.info("size: " + file.getSize());
// logger.info("contentType: " + file.getContentType());
//
// String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
//
// model.addAttribute("savedName", savedName);
//
// }
//
// private String uploadFile(String originalName, byte[] fileData)throws
// Exception{
//
// UUID uid = UUID.randomUUID();
//
// String savedName = uid.toString() + "_"+ originalName;
//
// File target = new File(uploadPath,savedName);
//
// FileCopyUtils.copy(fileData, target);
//
// return savedName;
//
// }