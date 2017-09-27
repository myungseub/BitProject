package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.domain.Bugger2VO;
import kr.co.domain.Bugger2VO;
import kr.co.domain.PageMaker;
import kr.co.domain.SearchCriteria;
import kr.co.service.Bugger2Service;
import kr.co.service.Bugger2Service;

@Controller
@RequestMapping("/sbugger2/*")
public class SearchBugger2Controller {

  private static final Logger logger = LoggerFactory.getLogger(SearchBugger2Controller.class);

  @Inject
  private Bugger2Service service;

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    logger.info(cri.toString());

    // model.addAttribute("list", service.listCriteria(cri));
    model.addAttribute("list", service.listSearchCriteria(cri));

    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);

    // pageMaker.setTotalCount(service.listCountCriteria(cri));
    pageMaker.setTotalCount(service.listSearchCount(cri));

    model.addAttribute("pageMaker", pageMaker);
  }

  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
  public void read(@RequestParam("bugger2No") int bugger2No, @ModelAttribute("cri") SearchCriteria cri, Model model)
      throws Exception {

    model.addAttribute(service.read(bugger2No));
  }

  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
  public String remove(@RequestParam("bugger2No") int bugger2No, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    service.remove(bugger2No);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/sbugger2/list";
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
  public void modifyPagingGET(int bugger2No, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    model.addAttribute(service.read(bugger2No));
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
  public String modifyPagingPOST(Bugger2VO bugger2VO, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    logger.info(cri.toString());
    service.modify(bugger2VO);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    logger.info(rttr.toString());

    return "redirect:/sbugger2/list";
  }

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public void registGET() throws Exception {

    logger.info("regist get ...........");
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registPOST(Bugger2VO bugger2VO, RedirectAttributes rttr) throws Exception {

    logger.info("regist post ...........");
    logger.info(bugger2VO.toString());

    service.regist(bugger2VO);

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/sbugger2/list";
  }
  
  
//  @RequestMapping("/getAttach/{bugger2No}")
//  @ResponseBody
//  public List<String> getAttach(@PathVariable("bugger2No")Integer bugger2No)throws Exception{
//    
//    return service.getAttach(bugger2No);
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
