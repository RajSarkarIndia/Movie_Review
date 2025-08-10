package DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Repository
public class UserRepository {
	@Autowired
	private JdbcTemplate jdbctemplate;

	public void userDetails(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("UserName");
		String query1 = "Select * from User where UserName=?";
		List<User> list = jdbctemplate.query(query1, new UserRowMapper(), username);
		session.setAttribute("UserDetails", list);

	}

	public void AdminDetails(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("AdminName");
		String query1 = "Select * from Admin where AdminName=?";
		List<Admin> list = jdbctemplate.query(query1, new AdminRowMapper(), username);
		session.setAttribute("AdminDetails", list);
	}

	public void addmovieintodb(HttpServletRequest request,Movie movie) {
		String sql = "INSERT INTO Movie (MovieName, Genre, ReleaseDate, Length, MovieImageURL, MovieRating, Trailer) VALUES (?, ?, ?, ?, ?, ?, ?)";
	    jdbctemplate.update(sql,
	        movie.getMovieName(),
	        movie.getGenre(),
	        movie.getReleaseDate(),     
	        movie.getLength(),
	        movie.getMovieImageURL(),
	        movie.getMovieRating(),
	        movie.getTrailer()
	    );
		

		
	}
}
