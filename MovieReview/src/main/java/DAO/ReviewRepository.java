package DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Repository
public class ReviewRepository {
@Autowired
private JdbcTemplate jdbctemplate;

public List<Review> getReviews(String MovieName){
String mquery="select * from Review where MovieName=?";	
List<Review> list=jdbctemplate.query(mquery,new ReviewRowMapper(),MovieName);	
return list;	
}
public void comments(HttpServletRequest request) {
	HttpSession session=request.getSession();
	String cquery = "SELECT * FROM Review WHERE UserName =? ORDER BY CreatedAt DESC LIMIT 3";
List<Review>list=jdbctemplate.query(cquery, new ReviewRowMapper(),(String)session.getAttribute("UserName"));	
	session.setAttribute("comments",list);
	
	}
	
}
