package com.skilldistillery.danceclass.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name="dance_class")

public class DanceClass {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	private String instructor;

	public DanceClass() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInstructor() {
		return instructor;
	}

	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}

	@Override
	public String toString() {
		return "Class [id=" + id + ", instructor=" + instructor + "]";
	}
}
