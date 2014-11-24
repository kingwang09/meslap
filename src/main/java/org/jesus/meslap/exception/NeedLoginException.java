package org.jesus.meslap.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NeedLoginException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Logger log = LoggerFactory.getLogger(getClass());
	public NeedLoginException(String errorMsg){
		log.error(errorMsg);
	}
	
	
}
