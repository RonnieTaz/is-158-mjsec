{extends file="Layouts/main.tpl"}

{block "content"}
	<main class="container">
		<div class="card">
			<div class="card-header">
				Add new Alumnus details
			</div>
			<form method="post" id="alumnus_form">
				<div class="card-body">
					<div class="row mb-2">
						<div class="col-md-4">
							<label class="visually-hidden" for="alumnus_name">Alumnus Name</label>
							<div class="input-group">
								<div class="input-group-text">Alumnus Name</div>
								<input type="text" class="form-control" name="alumnus_name" id="alumnus_name" placeholder="John Doe">
							</div>
						</div>
						<div class="col-md-4">
							<label class="visually-hidden" for="enrollment_year">Enrollment year</label>
							<select class="form-select" id="enrollment_year" name="enrollment_year" required>
								<option disabled selected>Enrollment year</option>
                                {foreach $enrollmentYears as $year}
									<option value="{$year}">{$year}</option>
                                {/foreach}
							</select>
						</div>
						<div class="col-md-4">
							<label class="visually-hidden" for="graduation_year">Graduation year</label>
							<select class="form-select" id="graduation_year" name="graduation_year" required>
								<option disabled selected>Graduation year</option>
                                {foreach $graduationYears as $year}
									<option value="{$year}">{$year}</option>
                                {/foreach}
							</select>
						</div>
					</div>
					<div class="row my-3">
						<div class="col-md-4">
							<label class="visually-hidden" for="headmaster_name">Headmaster Name</label>
							<div class="input-group">
								<div class="input-group-text">Headmaster Name</div>
								<input type="text" class="form-control" id="headmaster_name" name="headmaster_name" placeholder="John Doe">
							</div>
						</div>
						<div class="col-md-4">
							<label class="visually-hidden" for="teacher_name">Famous teacher</label>
							<div class="input-group">
								<div class="input-group-text">Famous teacher</div>
								<input type="text" class="form-control" id="teacher_name" name="teacher_name" placeholder="John Doe">
							</div>
						</div>
						<div class="col-md-4">
							<label class="visually-hidden" for="results">Results</label>
							<select class="form-select" id="results" name="results" required>
								<option disabled selected>Results</option>
								<option value="I">Division One</option>
								<option value="II">Division Two</option>
								<option value="III">Division Three</option>
								<option value="IV">Division Four</option>
								<option value="0">Division Zero</option>
							</select>
						</div>
					</div>
					<div class="row my-3">
						<div class="col-md-6">
							<label class="visually-hidden" for="occupation">Occupation</label>
							<div class="input-group">
								<span class="input-group-text">
									<i class="fa-solid fa-business-time"></i>
								</span>
								<input type="text" class="form-control" id="occupation" name="occupation" placeholder="Occupation">
							</div>
						</div>
						<div class="col-md-6">
							<label class="visually-hidden" for="address">Address</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fa-solid fa-map-location-dot"></i>
								</div>
								<input type="text" class="form-control" id="address" name="address" placeholder="Address">
							</div>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-md-6">
							<label class="visually-hidden" for="email">Email</label>
							<div class="input-group">
								<span class="input-group-text">
									<i class="fa-solid fa-envelope"></i>
								</span>
								<input type="email" class="form-control" id="email" name="email" placeholder="Email">
							</div>
						</div>
						<div class="col-md-6">
							<label class="visually-hidden" for="phone_number">Phone Number</label>
							<div class="input-group">
								<div class="input-group-text">
									<i class="fa-solid fa-phone"></i>
								</div>
								<input type="tel" class="form-control" id="phone_number" name="phone_number" placeholder="+255xxxxxxxxx">
							</div>
						</div>
					</div>
				</div>
				<div class="card-footer d-flex w-100 justify-content-end">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</form>
		</div>
	</main>
{/block}

{block "extraScripts"}
{literal}
	<script type="text/javascript">
        const form = document.getElementById('alumnus_form')
        form.addEventListener('submit', (e) => {
            e.preventDefault()
            let alumnusName = document.getElementById('alumnus_name')
            let teacherName = document.getElementById('teacher_name')
            let email = document.getElementById('email')
            let occupation = document.getElementById('occupation')

            if (validateEmail(email.value) && validateLength(alumnusName.value, 30, 'Alumnus Name')
                && validateLength(teacherName.value, 30, 'Famous teacher\'s name') && validateLength(occupation.value, 20, 'Occupation')) {
                form.submit()
            }
        })

        const validateEmail = (email) => {
            if (!(/^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/.test(email))) {
                alert('Email is invalid')
                return false
            }
            return true
        }

        const validateLength = (field, length, name) => {
            if (field.length > length) {
                alert(`${name} must not exceed ${length} characters`)
                return false
            }

            return true
        }
	</script>
{/literal}
{/block}