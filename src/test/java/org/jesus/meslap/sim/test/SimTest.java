package org.jesus.meslap.sim.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:META-INF/spring/applicationContext.xml")
@ActiveProfiles("development")
//@Transactional
public class SimTest {
	
	@Test
	public void replaceTest(){
		String test = "Vmware, Inc.";
		//test = test.replaceAll(",", " ");
		test = test.replaceAll(",", " ");
		System.out.println(test);
	}
}
