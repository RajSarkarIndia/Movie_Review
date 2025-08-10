package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Repository;

@Repository
public class ReviewRowMapper implements RowMapper<Review> {
	@Override
	public Review mapRow(ResultSet rs, int rowNum) throws SQLException {
	    Review review = new Review();
	    review.setReviewID(rs.getInt(1));
	    review.setMovieName(rs.getString(2));
	    review.setUserName(rs.getString(3));
	    review.setUserRating(rs.getDouble(4));
	    review.setReview(rs.getString(5));

	 
	    java.sql.Timestamp timestamp = rs.getTimestamp(6);
	    if (timestamp != null) {
	        review.setCreatedAt(timestamp.toLocalDateTime());
	    } else {
	        review.setCreatedAt(null);
	    }

	    return review;
	}

}
