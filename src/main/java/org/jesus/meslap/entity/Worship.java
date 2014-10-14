package org.jesus.meslap.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="CMM_WORSHIP")
public class Worship {
	public static final String WORSHIP_FOLDER = "worshipFiles";
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Getter
	private Integer id;
	
	@Column
	@Getter @Setter
	private String title;
	
	@Column(length=200)
	@Getter @Setter
	private String bibleIndex;
	
	@Column(length=2000)
	@Getter @Setter
	private String bible;
	
	@Column(name="FILE_PATH")
	@Getter @Setter
	private String filePath;
	
	@Column(name="TITLE_IMAGE_FILE_NAME")
	@Getter @Setter
	private String titleImageFileName;
	
	@Transient
	@Getter @Setter
	private MultipartFile titleImageFile; 
	
	@Column(name="AUDIO_FILE_NAME")
	@Getter @Setter
	private String audioFileName;
	
	@Transient
	@Getter @Setter
	private MultipartFile audioFile;
	
	@Column(name="TEXT_FILE_NAME")
	@Getter @Setter
	private String textFileName;//PDF파일일거임.
	@Transient
	@Getter @Setter
	private MultipartFile textFile;
	
	@Column(name="JUBO_FILE_NAME01")
	@Getter @Setter
	private String juboFileName01;
	
	@Column(name="JUBO_FILE_NAME02")
	@Getter @Setter
	private String juboFileName02;
	
	@Column(name="JUBO_FILE_NAME03")
	@Getter @Setter
	private String juboFileName03;
	
	@Transient
	@Getter @Setter
	private MultipartFile[] juboFile;
	
	@Column(name="YOUTUBE_URL")
	@Getter @Setter
	private String youtubeUrl;
	
	@Column(name="VIDEO_IMAGE_FILE_NAME")
	@Getter @Setter
	private String videoImageFileName;
	
	@Transient
	@Getter @Setter
	private MultipartFile videoImage;
	
	@Column
	@Getter @Setter
	private Date wdate;
}
