<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>{$title|escape|default: 'Majengo Secondary School'}</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
		  integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
		  crossorigin="anonymous" referrerpolicy="no-referrer"/>
    {block name="internalStyles"}{/block}
</head>
<body class="d-flex flex-column min-vh-100">
<header class="container">
	<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
		<a href="/"
		   class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none fs-5 fw-bold text-uppercase">
			Majengo Secondary School
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="/" class="nav-link px-2 link-secondary">Home</a></li>
			<li><a href="/about" class="nav-link px-2 link-dark">About</a></li>
			<li><a href="/staffs" class="nav-link px-2 link-dark">Staff</a></li>
			<li><a href="/contacts" class="nav-link px-2 link-dark">Contacts</a></li>
            {auth id=$id}
				<li><a href="/alumni" class="nav-link px-2 link-dark">Alumni</a></li>
            {/auth}
		</ul>

		<div class="col-md-3 text-end align-items-center">
            {if {authenticate id=$id}}
				<span class="d-inline-block mx-1 text-truncate" style="max-width: 150px">Welcome {$name}</span>
            {/if}
            {if !{authenticate id=$id}}
				<a href="/login" class="btn btn-outline-primary me-2">Login</a>
            {else}
				<a href="/logout" class="btn btn-outline-primary me-2">Logout</a>
            {/if}
            {if !{authenticate id=$id}}
				<a href="/register" class="btn btn-primary">Register</a>
            {/if}
		</div>
	</div>
</header>
{block name="content"}
	Empty Content
{/block}
<footer class="container mt-auto">
	<div class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
					<use xlink:href="#bootstrap"></use>
				</svg>
			</a>
			<span class="mb-3 mb-md-0 text-muted">© {date("Y")} Majengo Secondary School</span>
		</div>

		<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
			<li class="ms-3"><a class="text-muted" href="#">
					<i class="fa-brands fa-twitter fa-2x"></i>
				</a></li>
			<li class="ms-3"><a class="text-muted" href="#">
					<i class="fa-brands fa-instagram fa-2x"></i>
				</a></li>
			<li class="ms-3"><a class="text-muted" href="#">
					<i class="fa-brands fa-facebook-f fa-2x"></i>
				</a></li>
		</ul>
	</div>
</footer>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
		integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
{block "extraScripts"}{/block}
</body>
</html>