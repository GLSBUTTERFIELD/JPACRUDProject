package com.skilldistillery.danceclass.data;

import java.util.List;

import com.skilldistillery.danceclass.entities.DanceClass;

public interface DanceClassDAO {
	List<DanceClass> findAll ();
	DanceClass findById(int classId);
	DanceClass create(DanceClass newClass);
	DanceClass update(int classId, DanceClass updatedClass);
	boolean deleteById(int classId);
}
