# Movie Review Web Application

## Setup Instructions

### 1. Adding Movie Trailer
- To add a trailer URL in the "Add Movie" form, use an embedded link from YouTube.
- **How to get the embedded code from YouTube:**
  - Go to the YouTube video page of the movie trailer.
  - Click on the **Share** button below the video.
  - Select **Embed** from the popup.
  - Copy the HTML `<iframe>` embed code.
  - From this embed code, extract only the **last part of the link** (the video ID), found after `embed/`.
  
  **Example:**  
  Embed code snippet:  
  `<iframe src="https://www.youtube.com/embed/dQw4w9WgXcQ" ...></iframe>`  
  Here, only use `dQw4w9WgXcQ` as the Trailer input in the Add Movie form.

### 2. Adding Movie Image
- To add a movie image, place your image file inside the project’s `/images` folder.
- In the "Add Movie" form, enter the **file name with extension** (e.g., `bahubali.jpg`) into the MovieImageURL field.
- The application will load the image from the `./MovieReview/src/main/webapp/image` folder using that file name.

---

## Project Overview

This is a full-stack Movie Review web application built with Java, Servlets, JSP, Spring Framework, and MySQL. It allows users to browse movies, view detailed information, and submit reviews with star ratings. Secure user and admin authentication with session management ensures role-based access and data integrity.

---

## Key Features

- Secure authentication for users and admins with session handling using the Servlet API (`HttpServletRequest` and `HttpSession`).
- Role-based dashboards for efficient user and admin experience.
- CRUD operations for movies and reviews.
- Displays recent reviews in correct chronological order.
- Manual configuration of Spring MVC including controllers, view resolvers, and mappings.
- Responsive and modern UI with custom CSS and animated backgrounds for login and profile pages.
- Supports YouTube trailers by storing only the video ID extracted from embed links.
- Serves movie images locally from the `/images` folder by specifying a file name.

---

##Video

Please Refer to my LinkedIn video for View.
https://www.linkedin.com/posts/rajsarkarindia_java-springframework-fullstackdeveloper-activity-7360259918936862720-iluZ?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFkKZlMBRGH1yA_I8vJkvW4QH7Kjw3n0OFw

## Getting Started

1. Clone the repository:
git clone https://github.com/RajSarkarIndia/Movie_Review

2. Import the project into your IDE (e.g., Eclipse).
3. Set up your MySQL database using the provided schema/script.
4. Place your movie image files inside the `./MovieReview/MovieReview/src/main/webapp/image` folder in the project.
5. Run the application on an Apache Tomcat server.
6. Follow the instructions above to add movies with trailers and images via the admin panel.

---

If you have any questions or need further assistance, feel free to open an issue or contact me!

---

Thank you for checking out my Movie Review Web Application project!


