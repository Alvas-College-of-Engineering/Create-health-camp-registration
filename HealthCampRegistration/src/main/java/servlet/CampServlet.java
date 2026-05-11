package servlet;

import model.Participant;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CampServlet")

public class CampServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    static List<Participant> participantList =
            new ArrayList<>();

    // =========================
    // ADD PARTICIPANT
    // =========================

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("id")
                );

        String name =
                request.getParameter("name");

        int age =
                Integer.parseInt(
                        request.getParameter("age")
                );

        String gender =
                request.getParameter("gender");

        String contact =
                request.getParameter("contact");

        String campType =
                request.getParameter("campType");

        Participant p = new Participant(
                id,
                name,
                age,
                gender,
                contact,
                campType
        );

        participantList.add(p);

        response.sendRedirect(
                "CampServlet?action=view"
        );
    }

    // =========================
    // HANDLE GET REQUESTS
    // =========================

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String action =
                request.getParameter("action");

        // =========================
        // VIEW PARTICIPANTS
        // =========================

        if ("view".equals(action)) {

            response.setContentType("text/html");

            response.getWriter().println("" +

                    "<html>" +

                    "<head>" +

                    "<title>Participants</title>" +

                    "<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css' rel='stylesheet'>" +

                    "<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css' rel='stylesheet'>" +

                    "<style>" +

                    "body{background:#eef2ff;font-family:Segoe UI;}" +

                    ".table-box{" +

                    "background:white;" +

                    "padding:30px;" +

                    "border-radius:20px;" +

                    "box-shadow:0 10px 25px rgba(0,0,0,0.1);" +

                    "}" +

                    "</style>" +

                    "</head>" +

                    "<body>" +

                    "<nav class='navbar navbar-dark bg-success'>" +

                    "<div class='container-fluid'>" +

                    "<a href='index.jsp' class='btn btn-light'>" +

                    "<i class='fa-solid fa-house'></i> Home</a>" +

                    "<span class='navbar-brand'>" +

                    "<i class='fa-solid fa-users'></i> Registered Participants" +

                    "</span>" +

                    "</div>" +

                    "</nav>" +

                    "<div class='container mt-5'>" +

                    "<div class='table-box'>" +

                    "<div class='d-flex justify-content-between align-items-center mb-4'>" +

                    "<h2>Participant Records</h2>" +

                    "<a href='register.jsp' class='btn btn-success'>" +

                    "<i class='fa-solid fa-user-plus'></i> Add Participant</a>" +

                    "</div>" +

                    "<table class='table table-hover table-bordered'>" +

                    "<tr class='table-success'>" +

                    "<th>ID</th>" +
                    "<th>Name</th>" +
                    "<th>Age</th>" +
                    "<th>Gender</th>" +
                    "<th>Contact</th>" +
                    "<th>Camp Type</th>" +
                    "<th>Action</th>" +

                    "</tr>"
            );

            for (Participant p : participantList) {

                response.getWriter().println("" +

                        "<tr>" +

                        "<td>" + p.getId() + "</td>" +

                        "<td>" + p.getName() + "</td>" +

                        "<td>" + p.getAge() + "</td>" +

                        "<td>" + p.getGender() + "</td>" +

                        "<td>" + p.getContact() + "</td>" +

                        "<td>" + p.getCampType() + "</td>" +

                        "<td>" +

                        "<a class='btn btn-danger btn-sm' href='CampServlet?action=delete&id="
                        + p.getId() + "'>" +

                        "<i class='fa-solid fa-trash'></i> Delete</a>" +

                        "</td>" +

                        "</tr>"
                );
            }

            response.getWriter().println("" +

                    "</table>" +

                    "</div>" +

                    "</div>" +

                    "</body>" +

                    "</html>"
            );

            return;
        }

        // =========================
        // DELETE PARTICIPANT
        // =========================

        if ("delete".equals(action)) {

            int id =
                    Integer.parseInt(
                            request.getParameter("id")
                    );

            participantList.removeIf(
                    p -> p.getId() == id
            );

            response.sendRedirect(
                    "CampServlet?action=view"
            );

            return;
        }
    }
}