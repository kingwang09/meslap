package org.jesus.meslap.configuration;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class MeslapAspect {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Around("execution(public * *..*Controller.*(..))")
	public Object controllerAuthManager(ProceedingJoinPoint pjp) throws Throwable{
		Class clazz = pjp.getTarget().getClass();
		
		String className = clazz.getSimpleName();
		String methodName = pjp.getSignature().getName();
		
		Signature sig = pjp.getSignature();
		log.debug("------------------------------------------------------------");
		log.debug("execute Controller AuthManage.");
		log.debug("------------------------------------------------------------");
		log.debug("	className = "+className);
		log.debug("	methodName = "+methodName);
		return pjp.proceed();
	}
}
