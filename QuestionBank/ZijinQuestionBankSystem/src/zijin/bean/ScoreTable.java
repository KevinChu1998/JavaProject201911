package zijin.bean;

/**
 * 文件名：ScoreTable.java
 * 作用：封装成绩的数据信息，面向功能的，结合多表汇总信息-》student.myScore.jsp
 * 创建者：陈天、瞿嘉乐、季洋洋、朱凯
 * 创建时间：
 * 
 */
public class ScoreTable {
	private String sid;
	private String tid;
	private String paperid;
	private String papername;
	private int subjectid;
	private String starttime;
	private String endtime;
	private String subjectname;
	private String teachername;
	private int score;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getPaperid() {
		return paperid;
	}
	public void setPaperid(String paperid) {
		this.paperid = paperid;
	}
	public String getPapername() {
		return papername;
	}
	public void setPapername(String papername) {
		this.papername = papername;
	}
	public int getSubjectid() {
		return subjectid;
	}
	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
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
	public String getSubjectname() {
		return subjectname;
	}
	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}

}
