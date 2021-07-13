package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Faq;
import com.koreait.shoefly.dto.Notice;

public interface ManagerDAO {

	
	// NOTICE/FAQ
	public int countNotice(Map<String, Object> map);
	public List<Notice> selectListNotice(Map<String, Object> map);
	public int countFaq(Map<String, Object> map);
	public List<Faq> selectListFaq(Map<String, Object> map);
	public Notice selectOneNotice(long noticeNo);
	public Faq selectOneFaq(long faqNo);
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(long noticeNo);
	public int insertFaq(Faq faq);
	public int updateFaq(Faq faq);
	public int deleteFaq(long faqNo);
}
