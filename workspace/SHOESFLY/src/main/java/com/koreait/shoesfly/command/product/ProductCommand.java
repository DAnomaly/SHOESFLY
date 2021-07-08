package com.koreait.shoesfly.command.product;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.koreait.shoesfly.command.BaseCommand;
import com.koreait.shoesfly.command.member.MemberCommand;

public interface ProductCommand extends BaseCommand{

	public Logger logger = LoggerFactory.getLogger(MemberCommand.class);
	
}
