{extends file="Layouts/auth.tpl"}

{block "internalStyles"}
	<style>
        .gradient-custom {
            background: #BA5370;
            background: -webkit-linear-gradient(to bottom, #F4E2D8, #BA5370);
            background: linear-gradient(to bottom, #F4E2D8, #BA5370);

        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
	</style>
{/block}

{block "content"}
	<main class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7">
					<div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
						<div class="card-body p-4 p-md-5">
							<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
                            {foreach $flashes as $type=>$flash}
                                {foreach $flash as $message}
									<div class="alert alert-{$type} alert-dismissible fade show" role="alert">
                                        {$message}
										<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
									</div>
                                {/foreach}
                            {/foreach}
							<form method="post" id="registrationForm" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-6 mb-4">
										<div class="form-outline">
											<input type="text" id="firstName" class="form-control"
												   placeholder="First Name" name="first_name" required/>
											<label class="form-label d-none" for="firstName">First Name</label>
										</div>
									</div>
									<div class="col-md-6 mb-4">
										<div class="form-outline">
											<input type="text" id="middleName" class="form-control"
												   placeholder="Middle Name" name="middle_name"/>
											<label class="form-label d-none" for="middleName">Middle Name</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4">
										<div class="form-outline">
											<input type="text" id="lastName" class="form-control"
												   placeholder="Last Name" name="last_name" required/>
											<label class="form-label d-none" for="lastName">Last Name</label>
										</div>
									</div>
									<div class="col-md-6 mb-4">
										<div class="form-outline input-group">
											<span class="input-group-text">Date of birth</span>
											<input type="date" class="form-control" id="birthdayDate" name="dob"
												   required/>
											<label for="birthdayDate" class="form-label d-none">Date of birth</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-solid fa-envelope"></i>
												</span>
												<input type="email" id="emailAddress" class="form-control"
													   placeholder="Email" name="email" required/>
											</div>
											<label class="form-label d-none" for="emailAddress">Email</label>
										</div>
									</div>
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline input-group">
											<span class="input-group-text">@</span>
											<input type="text" id="username" class="form-control"
												   placeholder="Username" name="username" required/>
											<label class="form-label d-none" for="username">Username</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-solid fa-phone"></i>
												</span>
												<input type="tel" id="phoneNumber" class="form-control"
													   placeholder="Phone Number" name="phone_number"/>
											</div>
											<label class="form-label d-none" for="phoneNumber">Phone Number</label>
										</div>
									</div>
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-brands fa-facebook-f"></i>
												</span>
												<input type="text" id="fbUsername" class="form-control"
													   placeholder="Facebook Username" name="facebook"/>
												<label class="form-label d-none" for="fbUsername">Facebook
													Username</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-brands fa-twitter"></i>
												</span>
												<input type="text" id="twitter" class="form-control"
													   placeholder="Twitter Username" name="twitter"/>
											</div>
											<label class="form-label d-none" for="twitter">Twitter Username</label>
										</div>
									</div>
									<div class="col-md-6 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-brands fa-instagram"></i>
												</span>
												<input type="text" id="instagram" class="form-control"
													   placeholder="Instagram Username" name="instagram"/>
												<label class="form-label d-none" for="instagram">Instagram
													Username</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													<i class="fa-solid fa-lock"></i>
												</span>
												<input type="password" id="password" class="form-control"
													   placeholder="Password" name="password" required/>
											</div>
											<label class="form-label d-none" for="password">Password</label>
										</div>
									</div>
									<div class="col-md-12 mb-4 pb-2">
										<div class="form-outline">
											<div class="input-group">
												<span class="input-group-text">
													CV
												</span>
												<input accept="application/pdf" class="form-control" type="file" id="cv"
													   required name="cv">
												<label class="form-label d-none" for="cv">CV</label>
											</div>
										</div>
									</div>
								</div>
								<div class="mt-4 pt-2">
									<button class="btn btn-primary" type="submit">Submit</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
{/block}

{block "extraScripts"}
{literal}
	<script type="text/javascript">
        const form = document.getElementById("registrationForm")
        form.addEventListener('submit', (e) => {
            e.preventDefault()
            let email = document.getElementById('emailAddress')
            let password = document.getElementById('password')

            if (validateEmail(email.value) && validatePassword(password.value)) {
                form.submit()
            }
        })

        const validateEmail = (email) => {
			if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))) {
                alert('Email is invalid')
				return false
            }
            return true
        }

        const validatePassword = (password) => {
            if (password.length < 8) {
                alert("Password must have a minimum of 8 characters")
				return false
            }
            if (!(/\w+/.test(password))) {
                alert('Password must contain at least 1 alphanumeric character')
				return false
            }
            if (!(/[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/.test(password))) {
                alert('Password must contain at least 1 special character')
				return false
            }

            return true
        }
	</script>
{/literal}
{/block}