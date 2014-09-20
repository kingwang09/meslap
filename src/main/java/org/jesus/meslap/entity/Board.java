package org.jesus.meslap.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="CMM_BOARD")
public class Board implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Getter @Setter
	private int id;
	
	@Column(name="BOARD_CODE",nullable=false)
	@Getter @Setter
	private String boardCode;
	@Getter @Setter
	private String title;
	@Getter @Setter
	private String content;
	@Getter @Setter
	private Date wdate;
	@Getter @Setter
	private Date mdate;
	@Getter @Setter
	private String writer;
	
}
