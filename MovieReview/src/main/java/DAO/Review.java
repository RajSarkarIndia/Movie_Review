package DAO;

import java.time.LocalDateTime;

public class Review {
private int ReviewID;
private String MovieName;
private String UserName;
private double UserRating;
private String Review;
private LocalDateTime CreatedAt;
public int getReviewID() {
	return ReviewID;
}
public void setReviewID(int reviewID) {
	ReviewID = reviewID;
}
public String getMovieName() {
	return MovieName;
}
public void setMovieName(String movieName) {
	MovieName = movieName;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public double getUserRating() {
	return UserRating;
}
public void setUserRating(double userRating) {
	UserRating = userRating;
}
public String getReview() {
	return Review;
}
public void setReview(String review) {
	Review = review;
}
public LocalDateTime getCreatedAt() {
	return CreatedAt;
}
public void setCreatedAt(LocalDateTime createdAt) {
	CreatedAt = createdAt;
}

}
