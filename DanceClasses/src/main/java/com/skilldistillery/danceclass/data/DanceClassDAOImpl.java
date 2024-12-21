package com.skilldistillery.danceclass.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.danceclass.entities.DanceClass;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class DanceClassDAOImpl implements DanceClassDAO {
	@PersistenceContext
	private EntityManager em;

//NO transaction.begin/commit
//NO em.close()

	@Override
	public List<DanceClass> findAll() {
		String jpqlQuery = "SELECT c FROM DanceClass c";
		return em.createQuery(jpqlQuery, DanceClass.class).getResultList();
	}

	@Override
	public DanceClass findById(int classId) {
		return em.find(DanceClass.class, classId);
	}

	@Override
	public DanceClass createClass(DanceClass newClass) {
		em.persist(newClass);
		return newClass;
	}

	@Override
	public DanceClass updateClass(int classId, DanceClass updatedClass) {
		DanceClass managedDanceClass = em.find(DanceClass.class, classId);
		managedDanceClass.setDate(updatedClass.getDate());
		managedDanceClass.setInstructor(updatedClass.getInstructor());
		managedDanceClass.setType(updatedClass.getType());
		managedDanceClass.setStartTime(updatedClass.getStartTime());
		managedDanceClass.setWeekday(updatedClass.getWeekday());
		managedDanceClass.setIntervals(updatedClass.getIntervals());
		managedDanceClass.setLastUpdate(updatedClass.getLastUpdate());
		managedDanceClass.setInstructorImageUrl(updatedClass.getInstructorImageUrl());
		em.persist(managedDanceClass);
		return managedDanceClass;
	}

	@Override
	public boolean deleteById(int classId) {
		try {
			DanceClass managedDanceClass = em.find(DanceClass.class, classId);
			em.remove(managedDanceClass);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
