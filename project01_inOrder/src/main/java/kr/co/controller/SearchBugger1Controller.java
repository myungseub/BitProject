package kr.co.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.util.MediaUtils;
import kr.co.util.UploadFileUtils;
import kr.co.domain.Bugger1VO;
import kr.co.domain.PageMaker;
import kr.co.domain.SearchCriteria;
import kr.co.service.Bugger1Service;

@Controller
@RequestMapping("/sbugger1/*")
public class SearchBugger1Controller {

  private static final Logger logger = LoggerFactory.getLogger(SearchBugger1Controller.class);

  @Inject
  private Bugger1Service service;
  
  @Resource(name = "uploadPath")
  private String uploadPath;
  

  
  @ResponseBody
  @RequestMapping(value ="/fileCheck", method=RequestMethod.POST, 
                  produces = "text/plain;charset=UTF-8")
  public ResponseEntity<String> fileCheck(MultipartFile file)throws Exception{
	    
	  	
    logger.info("3originalName: " + file.getOriginalFilename());
    
    String formatName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
    
    if(MediaUtils.getMediaType(formatName) != null){
        return 
        	      new ResponseEntity<>("OK",
        	    		  HttpStatus.OK);
    	
    }
   
    return 
      new ResponseEntity<>(HttpStatus.OK);
  }
  
  
  
  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    logger.info(cri.toString());

    // model.addAttribute("list", service.listCriteria(cri));
//    cri.setTab1(tab1);

    PageMaker pageMaker = new PageMaker();
//    cri.setTab1(tab1); 
    pageMaker.setCri(cri);
    model.addAttribute("list", service.listSearchCriteria(cri));

    // pageMaker.setTotalCount(service.listCountCriteria(cri));
    pageMaker.setTotalCount(service.listSearchCount(cri));

    model.addAttribute("pageMaker", pageMaker);
  }

  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
  public void read(@RequestParam("bugger1No") int bugger1No, @ModelAttribute("cri") SearchCriteria cri, Model model)
      throws Exception {
	  model.addAttribute("bugger1No", bugger1No);
    model.addAttribute(service.read(bugger1No));
    
  }

  
  
  
  @ResponseBody
  @RequestMapping("/displayFile")
  public ResponseEntity<byte[]>  displayFile(@RequestParam("fileName") String fileName)throws Exception{
    
    InputStream in = null; 
    ResponseEntity<byte[]> entity = null;
    
    logger.info("FILE NAME: " + fileName);
    
    try{
      
      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
      
      MediaType mType = MediaUtils.getMediaType(formatName);
      
      HttpHeaders headers = new HttpHeaders();
      
      in = new FileInputStream(uploadPath+fileName);
      
      if(mType != null){
        headers.setContentType(mType);
      }else
      {
    	  return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//        fileName = fileName.substring(fileName.indexOf("_")+1);       
//        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//        headers.add("Content-Disposition", "attachment; filename=\""+ 
//          new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
      }

        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
          headers, 
          HttpStatus.CREATED);
    }catch(Exception e){
      e.printStackTrace();
      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
    }finally{
      in.close();
    }
      return entity;    
  }
  
  
  
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
  
  
  @RequestMapping(value = "/removePage", method = RequestMethod.GET)
  public String remove(@RequestParam("bugger1No") int bugger1No, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    service.remove(bugger1No);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());
    rttr.addAttribute("tab1", cri.getTab1());

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/sbugger1/list";
  }
  
  
  
  @RequestMapping(value = "/modifyPageTab", method = RequestMethod.GET)
  public String modifyPagingTab(@RequestParam("bugger1No") int bugger1No, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr) throws Exception {
	  
//	    rttr.addAttribute("page", cri.getPage());
//	    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//	    rttr.addAttribute("searchType", cri.getSearchType());
//	    rttr.addAttribute("keyword", cri.getKeyword());
	    rttr.addAttribute("tab1", 7);
	    
	  service.modifyTab(bugger1No);
	  
	  return "redirect:/sbugger1/list";
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
  public void modifyPagingGET(@RequestParam("bugger1No") int bugger1No, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
    model.addAttribute(service.read(bugger1No));
//    model.addAttribute(service.getAttach(bugger1No));
//    model.addAttribute("bugger1No", bugger1No);
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
  public String modifyPagingPOST(Bugger1VO bugger1VO, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    logger.info(cri.toString());
    if(bugger1VO.getTab1()==0) {
    	rttr.addFlashAttribute("msg", "NONE tab" + 9 + " is inputed");
    	bugger1VO.setTab1(9);
    }else {rttr.addFlashAttribute("msg", "SUCCESS");}

    service.modify(bugger1VO);
    

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());
    rttr.addAttribute("tab1", bugger1VO.getTab1());

//    rttr.addFlashAttribute("msg", "SUCCESS");

    logger.info(rttr.toString());

    return "redirect:/sbugger1/list";
  }

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public void registGET(@ModelAttribute("cri") SearchCriteria cri) throws Exception {

    logger.info("regist get ...........");
    logger.info("regist get ..."+cri.getTab1());
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registPOST(Bugger1VO bugger1VO, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    logger.info("regist post ...........");
    logger.info("regist post ......"+bugger1VO.getTab1());
//    logger.info(bugger1VO.getTab1());
    
//    String str = Integer.toString(bugger1VO.getTab1());
    
    if(bugger1VO.getTab1()==0) {
    	rttr.addFlashAttribute("msg", "fit");
    	bugger1VO.setTab1(9);
    }else {rttr.addFlashAttribute("msg", "SUCCESS");}


    	
    	logger.info("=====hhhhhhhh======");
    	
    	
    	service.regist(bugger1VO);
        rttr.addAttribute("page", cri.getPage());
        rttr.addAttribute("perPageNum", cri.getPerPageNum());
        rttr.addAttribute("searchType", cri.getSearchType());
        rttr.addAttribute("keyword", cri.getKeyword());
        rttr.addAttribute("tab1", bugger1VO.getTab1());
    	
    
    
//    logger.info(str);
//    if(str.equals("0")) {
//    	
//    	rttr.addFlashAttribute("msg", "fail");
//    	
//    	logger.info("=====AAAAAAAAAAAA======");
//    	
//    	return "redirect:/sbugger1/list";
//    }
    
    
    

    return "redirect:/sbugger1/list";
  }
  
  
//  @RequestMapping("/getAttach/{bugger1No}")
//  @ResponseBody
//  public List<String> getAttach(@PathVariable("bugger1No")Integer bugger1No)throws Exception{
//    
//    return service.getAttach(bugger1No);
//  }  

  // @RequestMapping(value = "/list", method = RequestMethod.GET)
  // public void listPage(@ModelAttribute("cri") SearchCriteria cri,
  // Model model) throws Exception {
  //
  // logger.info(cri.toString());
  //
  // model.addAttribute("list", service.listCriteria(cri));
  //
  // PageMaker pageMaker = new PageMaker();
  // pageMaker.setCri(cri);
  //
  // pageMaker.setTotalCount(service.listCountCriteria(cri));
  //
  // model.addAttribute("pageMaker", pageMaker);
  // }
}
