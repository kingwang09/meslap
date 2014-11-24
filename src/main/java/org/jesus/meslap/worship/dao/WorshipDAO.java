package org.jesus.meslap.worship.dao;

import java.util.List;

import org.jesus.meslap.entity.Worship;

public interface WorshipDAO {
	public void save(Worship worship);
	public void merge(Worship worship);
	public List<Worship> getWorships();
	public Worship getWorship(Integer id);
	public void delete(Integer id);
	
}
