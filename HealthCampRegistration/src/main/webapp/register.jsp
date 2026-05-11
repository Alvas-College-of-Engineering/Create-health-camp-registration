<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Health Camp Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
rel="stylesheet">

<style>

body{
    background:#f1f5f9;
    font-family:Segoe UI;
}

.form-container{
    width:900px;
    margin:auto;
    margin-top:50px;
    background:white;
    border-radius:25px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,0.1);
}

.left-side{
    background:linear-gradient(135deg,#16a34a,#15803d);
    color:white;
    padding:50px 35px;
    height:100%;
}

.left-side h1{
    font-size:35px;
    font-weight:bold;
}

.left-side p{
    margin-top:20px;
    font-size:18px;
    line-height:1.8;
}

.right-side{
    padding:45px;
}

.form-control,
.form-select{
    height:50px;
    border-radius:12px;
}

.btn-register{
    height:50px;
    border-radius:12px;
    font-size:18px;
}

</style>

</head>

<body>

<div class="container">

<div class="form-container row g-0">

<div class="col-md-4 left-side">

<h1>

<i class="fa-solid fa-notes-medical"></i>

Health Camp

</h1>

<p>

Complete your registration for upcoming health camps
including medical checkups, blood donation, dental care,
and wellness screening programs.

</p>

<hr class="mt-5 mb-4">

<h5>✔ Easy Registration</h5>

<h5 class="mt-3">✔ Digital Records</h5>

<h5 class="mt-3">✔ Secure Participant Data</h5>

</div>

<div class="col-md-8 right-side">

<div class="d-flex justify-content-between align-items-center">

<h2>

Participant Registration

</h2>

<a href="index.jsp"
class="btn btn-dark">

Home

</a>

</div>

<hr class="mb-4">

<form action="CampServlet" method="post">

<div class="row">

<div class="col-md-6 mb-4">

<label class="mb-2">

Participant ID

</label>

<input type="number"
name="id"
class="form-control"
required>

</div>

<div class="col-md-6 mb-4">

<label class="mb-2">

Full Name

</label>

<input type="text"
name="name"
class="form-control"
required>

</div>

<div class="col-md-6 mb-4">

<label class="mb-2">

Age

</label>

<input type="number"
name="age"
class="form-control"
required>

</div>

<div class="col-md-6 mb-4">

<label class="mb-2">

Gender

</label>

<select name="gender"
class="form-select">

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<div class="col-md-6 mb-4">

<label class="mb-2">

Contact Number

</label>

<input type="text"
name="contact"
class="form-control"
required>

</div>

<div class="col-md-6 mb-4">

<label class="mb-2">

Camp Type

</label>

<select name="campType"
class="form-select">

<option>General Checkup</option>

<option>Eye Camp</option>

<option>Dental Camp</option>

<option>Blood Donation</option>

<option>Diabetes Screening</option>

</select>

</div>

</div>

<button class="btn btn-success w-100 btn-register">

Register Participant

</button>

</form>

</div>

</div>

</div>

</body>

</html>