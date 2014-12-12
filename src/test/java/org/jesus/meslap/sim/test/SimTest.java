package org.jesus.meslap.sim.test;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:META-INF/spring/applicationContext.xml")
@ActiveProfiles("development")
//@Transactional
public class SimTest {
	
	@Test
	public void replaceTest(){
		String test = "network.checkpoint.fw_session";
		StringTokenizer token = new StringTokenizer(test,".");
		String parent = "";
		String name = "";
		Map<String,String> map = new HashMap<String,String>();
		while(token.hasMoreTokens()){
			name += token.nextToken()+".";
			if(!map.containsKey(name)){
				map.put(name, parent);
			}
			parent=name;
		}
		
		System.out.println(map);
	}
}
