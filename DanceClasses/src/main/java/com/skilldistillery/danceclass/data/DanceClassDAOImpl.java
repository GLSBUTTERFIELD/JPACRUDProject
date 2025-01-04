package com.skilldistillery.danceclass.data;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.skilldistillery.danceclass.entities.DanceClass;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
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
		DanceClass danceClass = null;
		try {
			danceClass = em.find(DanceClass.class, classId);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return danceClass;
	}

	@Override
	public DanceClass createClass(DanceClass newClass) {
		em.persist(newClass);
		return newClass;
	}

	@Override
	public DanceClass updateClass(int classId, DanceClass updatedClass) {
		DanceClass managedDanceClass = null;
		try {
			managedDanceClass = em.find(DanceClass.class, classId);

			if (managedDanceClass == null) {
				throw new EntityNotFoundException("DanceClass with ID " + classId + " not found.");
			}
			classId = managedDanceClass.getId();
			managedDanceClass.setDate(updatedClass.getDate());
			managedDanceClass.setType(updatedClass.getType());
			managedDanceClass.setInstructor(updatedClass.getInstructor());
			managedDanceClass.setStartTime(updatedClass.getStartTime());
			managedDanceClass.setWeekday(updatedClass.getWeekday());
			managedDanceClass.setInterval1(updatedClass.getInterval1());
			managedDanceClass.setInterval2(updatedClass.getInterval2());
			managedDanceClass.setLastUpdate(LocalDateTime.now());

			Map<String, String> instructorImageUrls = new HashMap<>();
			instructorImageUrls.put("Allie",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/7c7760e8-e210-4b9c-b5f8-c8cd90dc88c0/4.png?format=750w");
			instructorImageUrls.put("Emily",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w");
			instructorImageUrls.put("John",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/a7f69eb4-7495-4e2c-9552-e7202c53efab/johndanceteacher.png?format=2500w");
			instructorImageUrls.put("Julia",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/72a859ff-6e8e-474f-9ff5-5b7810e9c756/juliadanceteacher.png?format=750w");
			instructorImageUrls.put("Kenny",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w");
			instructorImageUrls.put("Mark",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w");
			instructorImageUrls.put("Monica",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/c2014138-92f5-4cf0-bb1f-f7fb5b6f5a5c/Monicadanceprofessional.png?format=750w");
			instructorImageUrls.put("Polly",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=750w");
			instructorImageUrls.put("Quiana",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w");
			instructorImageUrls.put("Sally",
					"https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/5ddfb343-0443-4e00-aff6-a471e87ce48d/sallystudioowner.png?format=1000w");

			String instructor = updatedClass.getInstructor();
			if (instructorImageUrls.containsKey(instructor)) {
				managedDanceClass.setInstructorImageUrl(instructorImageUrls.get(instructor));
			}

			em.persist(managedDanceClass);
			System.out.println(managedDanceClass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return managedDanceClass;
	}

	@Override
	public boolean deleteById(int classId) {
		try {
			DanceClass managedDanceClass = em.find(DanceClass.class, classId);
			if (managedDanceClass == null) {
				return false;
			}
			em.remove(managedDanceClass);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
