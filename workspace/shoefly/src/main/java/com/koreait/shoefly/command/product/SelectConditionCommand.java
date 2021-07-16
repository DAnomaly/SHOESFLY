package com.koreait.shoefly.command.product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
import com.koreait.shoefly.dto.Page;
import com.koreait.shoefly.util.PagingUtils;
@Component
public class SelectConditionCommand implements ProductCommand {
	
	private int recordPerPage = 6;
	private int pagePerBlock = 5;
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		
		String productName = (request.getParameter("productName"));
		String[] brands = request.getParameterValues("brand");
		String[] sizes = request.getParameterValues("size");
		Long minPrice = Long.parseLong(request.getParameter("minPrice") == "" ? "0" : request.getParameter("minPrice"));
		Long maxPrice = Long.parseLong(request.getParameter("maxPrice") == "" ? "9999999999" : request.getParameter("maxPrice"));
		
		//brand선택하지 않았을경우 전체에서 조회, 선택했을 경우 brandsArray로 합치기
		String brandsArray = "";
		if(brands == null) {
			brandsArray = "Jordan, Nike, New Balance, Adidas";
		} else if(brands.length == 1) {
			brandsArray = "'" + brands[0] + "'";
		} else {
				brandsArray = "'" + brands[0] + "'";
				for(int i = 1 ; i < brands.length ; i++) {
					brandsArray += ", '" + brands[i] + "'";
			}
		}

		//사이즈 체크가 없을 경우 전체 사이즈 조회, 선택했을 경우 sizesArray로 합치기
		String sizesArray = "";
		if(sizes == null) {
			sizesArray = "'240', '250', '260', '270', '280', '290'";
		} else if(sizes.length == 1) {
			sizesArray = sizes[0];
		} else {
			sizesArray =  "'"+ sizes[0] + "'";
			for(int j = 1 ; j < sizes.length ; j++) {
				sizesArray += ", '" + sizes[j] + "'";
			}
		}

		//페이징처리
		//paramMap에 담아 보내기
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("productName", productName);
		paramMap.put("brandsArray", brandsArray);
		paramMap.put("sizesArray", sizesArray);
		paramMap.put("minPrice", minPrice);
		paramMap.put("maxPrice", maxPrice);
		
		String strNowpage = request.getParameter("page");
		int nowpage = Integer.parseInt(strNowpage == null || strNowpage.equals("") ? "1" : strNowpage);
		int totalRecord = productDAO.countConditionProduct(paramMap);
		Page page = PagingUtils.getPage(nowpage, totalRecord, recordPerPage, pagePerBlock);
		
		paramMap.put("beginRecord", page.getBeginRecord());
		paramMap.put("endRecord", page.getEndRecord());
		logger.info("================");

		String path = "selectCondition.do";
		if (paramMap.get("productName") != null || paramMap.get("productName") != null ||
		    paramMap.get("brandsArray") != null || paramMap.get("sizesArray") != null ||
		    paramMap.get("minPrice") != null || paramMap.get("maxPrice") != null){
			path += "?productName=" + paramMap.get("productName").toString() +
					"&brandsArray=" + paramMap.get("brandsArray").toString() + 
					"&sizesArray=" + paramMap.get("sizesArray").toString() + 
					"&minPrice=" + paramMap.get("minPrice").toString() + 
					"&maxPrice=" + paramMap.get("maxPrice").toString();
		}

		String paging = PagingUtils.getPaging(path, page);
		
		//model.addAttribute("list", productDAO.selectCondition(paramMap));
		model.addAttribute("page", page);
		model.addAttribute("paging", paging);
		
		logger.info("조회되었다.");
		
		return null;
	}

}
