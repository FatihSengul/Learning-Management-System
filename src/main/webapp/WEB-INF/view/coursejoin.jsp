<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

<title>Kullanıcı Kayıt Formu</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

	<div>
		
		
		<div class="container py-5">
    	<div class="row">
        <div class="col-md-12">
            <h2 class="text-center mb-5">Kurs Olustur</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Kurs Olustur</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" action="${pageContext.request.contextPath}/joincourse"
						 method="post" >
                                <div class="form-group">
                                    <label for="inputName">Kursun Adı:</label>
                                    <input type="text" name="coursecode" class="form-control" id="inputName" placeholder="Kurs Adı">
                                </div>
                                
                                
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Ekle</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>



</body>
</html>