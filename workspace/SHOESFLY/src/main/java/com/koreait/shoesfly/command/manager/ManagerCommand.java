package com.koreait.shoesfly.command.manager;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.koreait.shoesfly.command.BaseCommand;

public interface ManagerCommand extends BaseCommand {

	public Logger logger = LoggerFactory.getLogger(ManagerCommand.class);
	
}
