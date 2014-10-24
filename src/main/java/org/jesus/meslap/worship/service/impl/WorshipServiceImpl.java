package org.jesus.meslap.worship.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.jesus.meslap.entity.Worship;
import org.jesus.meslap.worship.dao.WorshipDAO;
import org.jesus.meslap.worship.service.WorshipService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
public class WorshipServiceImpl implements WorshipService {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private WorshipDAO worshipDao;
	
	@Transactional
	public void write(String path, Worship worship){
		File dir = new File(path);
		if(!dir.exists())
			dir.mkdir();
		
		try {
			//Title Image File
//			MultipartFile titleImageFile = worship.getTitleImageFile();
//			if(titleImageFile!=null){
//				String titleImageFileName = titleImageFile.getOriginalFilename();
//				worship.setTitleImageFileName(titleImageFileName);
//				titleImageFile.transferTo(new File(path+File.separator+titleImageFileName));
//			}
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String currentDate = sdf.format(new Date());
			//Audio File
			MultipartFile audioFile = worship.getAudioFile();
			if(audioFile!=null){
				String audioFileName = currentDate+"_"+audioFile.getOriginalFilename();
				worship.setAudioFileName(audioFileName);
				audioFile.transferTo(new File(path+File.separator+audioFileName));
			}
			
			//Text File
			MultipartFile textFile = worship.getTextFile();
			if(textFile!=null){
				String textFileName = currentDate+"_"+textFile.getOriginalFilename();
				worship.setTextFileName(textFileName);
				textFile.transferTo(new File(path+File.separator+textFileName));
			}
			
			//Jubo File 1~3
			MultipartFile[] juboFiles = worship.getJuboFile();
			if(juboFiles!=null){
				for(int i=0; i<juboFiles.length;i++){
					MultipartFile juboFile = juboFiles[i];
					String juboFileName = null;
					switch(i){
					case 0: 
						juboFileName = currentDate+"_"+juboFile.getOriginalFilename(); 
						worship.setJuboFileName01(juboFileName);
						juboFile.transferTo(new File(path+File.separator+juboFileName));
						break;
					case 1: 
						juboFileName = currentDate+"_"+juboFile.getOriginalFilename(); 
						worship.setJuboFileName02(juboFileName);
						juboFile.transferTo(new File(path+File.separator+juboFileName));
						break;
					case 2: 
						juboFileName = currentDate+"_"+juboFile.getOriginalFilename(); 
						worship.setJuboFileName03(juboFileName);
						juboFile.transferTo(new File(path+File.separator+juboFileName));
						break;
					default:
						log.error("주보파일 개수가 초과하였습니다.");
						break;
					}//end switch
				}//end for
			}//end if
			
			worship.setWdate(new Date());
			worshipDao.save(worship);
		} catch (IllegalStateException e) {
			log.error("WorshipService.write Error 01. \n"+e.getMessage());
		} catch (IOException e) {
			log.error("WorshipService.write Error 02. \n"+e.getMessage());
		}
	}

}
