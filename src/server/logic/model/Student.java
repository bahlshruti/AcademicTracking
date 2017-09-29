package server.logic.model;

import java.util.List;
import java.util.Map;

public class Student implements StudentInt {

	int studentNumber;
	String studentName;
	boolean isFullTime;
	boolean isCreated;
	
	Map<Course, Integer> registerCourse;

	public Student(int studentNumber, String studentName, boolean isFullTime) {
		super();
		
		this.studentNumber = studentNumber;
		this.studentName = studentName;
		this.isFullTime = isFullTime;
		
		this.isCreated = true;
		this.registerCourse = null;
		
	}

	public int getStudentNumber() {
		return studentNumber;
	}

	public void setStudentNumber(int studentNumber) {
		this.studentNumber = studentNumber;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Map<Course, Integer> getRegisterCourse() {
		return registerCourse;
	}

	public void setRegisterCourse(Map<Course, Integer> registerCourse) {
		this.registerCourse = registerCourse;
	}

	public void setFullTime(boolean isFullTime) {
		this.isFullTime = isFullTime;
	}

	public void setCreated(boolean isCreated) {
		this.isCreated = isCreated;
	}

	@Override
	public int StudentNumber() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String Name() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isFullTime() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCreated() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Course> CompletedCourse() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Course> CurrentCourse() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Course selectCourse(List<Course> coursees) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean RegisterCourse(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DropCourse(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeRegisterCourse(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

}