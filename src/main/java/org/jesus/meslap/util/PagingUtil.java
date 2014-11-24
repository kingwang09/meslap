package org.jesus.meslap.util;

import java.util.HashMap;
import java.util.Map;


public class PagingUtil {
	public static Map getCurrentPaging(int pSize, Integer totsize,Integer currentPage){
		int page=1;			//현재페이지
		int totalSize=totsize.intValue();	//전체글의개수
		int totalPage=0;	//전체페이지수
		
		int pageSize=pSize;	//페이지당 보여질 글의 개수
		int firstRow=0;		//해당 페이지의 첫번째 글rownum
		int lastRow=0;		//해당 페이지의 마지막 글rownum
		
		int pageListSize=3;	//페이징에서 보여질 페이지수
		int firstpage=0;	//해당 페이지의 첫번째 페이지
		int lastpage=0;		//해당 페이지의 마지막 페이지
		
		if(currentPage!=null)
			page=currentPage.intValue();
		
		totalPage=totalSize/pageSize;
		if((totalSize%pageSize)!=0){
			totalPage++;
		}
		
		firstRow = (page-1)*pageSize+1;
		lastRow = page*pageSize;
		
		firstpage = ((page-1)/pageListSize)*pageListSize+1;
		lastpage = firstpage+(pageListSize+1);
		if(totalPage<lastpage)
				lastpage=totalPage;
		
		Map map = new HashMap();
			map.put("fRow", firstRow);
			map.put("lRow", lastRow);
			map.put("fPage", firstpage);
			map.put("lPage", lastpage);
			map.put("tPage", totalPage);
			map.put("cPage", page);
		return map;
	}
}
