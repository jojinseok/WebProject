package model1;

public class BoardDTO {
private String num;
private String title;
private String content;
private String id;
public String getNum() {
	return num;
}
public void setNum(String num) {
	this.num = num;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getVisitcount() {
	return visitcount;
}
public void setVisitcount(String visitcount) {
	this.visitcount = visitcount;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public java.sql.Date getPostdate() {
	return postdate;
}
public void setPostdate(java.sql.Date postdate) {
	this.postdate = postdate;
}
private String visitcount;
private String name;
private java.sql.Date postdate;
}
