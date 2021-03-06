package zijin.bean;

/**
 * 文件名：Errors.java
 * 作用：封装错题数据信息,侧重于概述（哪一张试卷，考试时间等）-》student.mistakeList.jsp
 * 创建者：陈天、瞿嘉乐、季洋洋、朱凯
 * 创建时间：
 * 
 */
public class Errors {
	private String papername;
	private String starttime;
	private String endtime;
	private int score;
	private String subjectname;
	private String tname;
	private String classname;
	private int paperid;
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}
	public int getMistakessum() {
		return mistakessum;
	}
	public void setMistakessum(int mistakessum) {
		this.mistakessum = mistakessum;
	}
	private int mistakessum;
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getPapername() {
		return papername;
	}
	public void setPapername(String papername) {
		this.papername = papername;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getSubjectname() {
		return subjectname;
	}
	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	
}

