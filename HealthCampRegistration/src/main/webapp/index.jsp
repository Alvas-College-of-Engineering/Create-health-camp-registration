<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Health Camp Registration System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
rel="stylesheet">

<style>

body{
    background:linear-gradient(135deg,#dbeafe,#f0fdf4);
    font-family:Segoe UI;
}

.main-box{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.dashboard{
    width:900px;
    background:white;
    border-radius:25px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
}

.left-panel{
    background:#15803d;
    color:white;
    padding:60px 40px;
    height:100%;
}

.left-panel h1{
    font-size:38px;
    font-weight:bold;
}

.right-panel{
    padding:60px 50px;
}

.feature-box{
    background:#f8fafc;
    padding:25px;
    border-radius:18px;
    margin-bottom:25px;
    border-left:6px solid #16a34a;
}

.btn-custom{
    border-radius:12px;
    padding:15px;
    font-size:18px;
}

</style>

</head>

<body>

<div class="container main-box">

<div class="dashboard row g-0">

<div class="col-md-5 left-panel">

<h1>
<i class="fa-solid fa-heart-pulse"></i>
Health Camp
</h1>

<p class="mt-4 fs-5">

A smart participant management system for organizing
and monitoring health camp registrations efficiently.

</p>

<hr class="mt-5 mb-5">

<h5>✔ Digital Registration</h5>

<h5 class="mt-3">✔ Participant Records</h5>

<h5 class="mt-3">✔ Camp Management</h5>

</div>

<div class="col-md-7 right-panel">

<h2 class="mb-4">

Welcome Dashboard

</h2>

<div class="feature-box">

<h4>

<i class="fa-solid fa-user-plus text-success"></i>

Participant Registration

</h4>

<p class="mt-2 text-muted">

Register new participants for various health camps.

</p>

<a href="register.jsp"
class="btn btn-success btn-custom w-100">

Open Registration Form

</a>

</div>

<div class="feature-box">

<h4>

<i class="fa-solid fa-users text-primary"></i>

Participant Records

</h4>

<p class="mt-2 text-muted">

View all registered participants and manage records.

</p>

<a href="CampServlet?action=view"
class="btn btn-dark btn-custom w-100">

View Participants

</a>

</div>

</div>

</div>

</div>

</body>

</html>