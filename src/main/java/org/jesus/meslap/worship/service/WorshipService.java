package org.jesus.meslap.worship.service;


import java.util.List;

import org.jesus.meslap.entity.Worship;

public interface WorshipService {

	public void write(String path, Worship worship);
	public List<Worship> getWorships();
	public void update(String path, Worship worship);
	public Worship getWorship(Integer id);
}
