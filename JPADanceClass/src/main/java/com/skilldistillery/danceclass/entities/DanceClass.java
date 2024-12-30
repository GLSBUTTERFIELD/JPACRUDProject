package com.skilldistillery.danceclass.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "dance_class")

public class DanceClass {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDate date;
	private String type;
	private String instructor;
	@Column(name = "start_time")
	private LocalTime startTime;
	private String weekday;
	 @Column(name = "intervals")
	    private String intervalsAsString;
	@Column(name = "last_update")
	private LocalDateTime lastUpdate;
	@Column(name = "instructor_image_url")
	private String instructorImageUrl;

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

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public LocalTime getStartTime() {
		return startTime;
	}

	public void setStartTime(LocalTime startTime) {
		this.startTime = startTime;
	}

	public String getWeekday() {
		return weekday;
	}

	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}

	public List<String> getIntervals() {
		if (intervalsAsString == null || intervalsAsString.isEmpty()) {
			return new ArrayList<>();
		}
		String[] individualStrings = intervalsAsString.split(",");
		List<String> intervals = new ArrayList<>(Arrays.asList(individualStrings));
		return intervals;
	}

	public void setIntervals(List<String> intervals) {
		if (intervals == null || intervals.isEmpty()) {
			this.intervalsAsString = "";
		} else {
			this.intervalsAsString = String.join(",", intervals);
		}
	}

	public LocalDateTime getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(LocalDateTime lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	public String getInstructorImageUrl() {
		return instructorImageUrl;
	}

	public void setInstructorImageUrl(String instructorImageUrl) {
		this.instructorImageUrl = instructorImageUrl;
	}

	@Override
	public String toString() {
		return "DanceClass [id=" + id + ", date=" + date + ", type=" + type + ", instructor=" + instructor
				+ ", startTime=" + startTime + ", weekday=" + weekday + ", intervalsAsString=" + intervalsAsString
				+ ", lastUpdate=" + lastUpdate + ", instructorImageUrl=" + instructorImageUrl + "]";
	}


}
