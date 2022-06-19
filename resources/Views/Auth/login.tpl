{extends file="Layouts/auth.tpl"}

{block "internalStyles"}
	<style>
        html,
        body {
            height: 100%;
            background: #BA5370;
            background: -webkit-linear-gradient(to bottom, #F4E2D8, #BA5370);
            background: linear-gradient(to bottom, #F4E2D8, #BA5370);
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

	</style>
{/block}

{block "content"}
	<main class="form-signin w-100 m-auto text-center card p-3">
		<div class="card-body">
			<form method="post">
				<p class="fs-4 fw-bold text-uppercase">Majengo Secondary School</p>
				<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInputUsername" name="username" placeholder="name@example.com">
					<label for="floatingInputUsername">Username</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
					<label for="floatingPassword">Password</label>
				</div>

				<div class="checkbox mb-3">
					<label>
						<input type="checkbox" name="remember_me"> Remember me
					</label>
				</div>
				<button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
				<p class="mt-5 mb-3 text-muted">© {date("Y")}</p>
			</form>
		</div>
	</main>
{/block}