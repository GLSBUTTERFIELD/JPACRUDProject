package com.skilldistillery.danceclass.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class DanceClassTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private DanceClass dc;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPADanceClass");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		dc = em.find(DanceClass.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		dc = null;
		em.close();
	}

	@Test
	void test_DanceClass_basic_mappings() {
		assertNotNull(dc);
		assertEquals("Kenny", dc.getInstructor());
	}

}
