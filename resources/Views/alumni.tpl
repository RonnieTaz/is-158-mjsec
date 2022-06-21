{extends file="Layouts/main.tpl"}

{block 'content'}
	<div class="d-flex w-100 justify-content-between my-2">
		<p class="fs-6 fw-bold text-uppercase">Registered Alumni</p>
		<a href="/alumni/register" class="btn btn-outline-primary">
				<span class="mx-1">
					<i class="fa-solid fa-person-circle-plus"></i>
				</span>
			Add new Alumnus
		</a>
	</div>
	<table class="table">
		<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">Alumnus Name</th>
			<th scope="col">Enrollment Year</th>
			<th scope="col">Graduation Year</th>
			<th scope="col">Overseeing Headmaster</th>
			<th scope="col">Famous Teacher</th>
			<th scope="col">Results</th>
			<th scope="col">Current Occupation</th>
			<th scope="col">Address</th>
			<th scope="col">Email</th>
			<th scope="col">Phone Number</th>
		</tr>
		</thead>
		<tbody>
        {foreach $alumni as $alumnus}
			<tr>
				<th scope="row">{counter}</th>
				<td>{$alumnus.name}</td>
				<td>{$alumnus.enrollment_year}</td>
				<td>{$alumnus.graduation_year}</td>
				<td>{$alumnus.headmaster}</td>
				<td>{$alumnus.famous_teacher}</td>
				<td>DIV {$alumnus.results}</td>
				<td>{$alumnus.occupation}</td>
				<td>{$alumnus.address}</td>
				<td>{$alumnus.email}</td>
				<td>{$alumnus.phone_number}</td>
			</tr>
            {foreachelse}
			<tr>
				<td colspan="9" class="text-center">No alumni found in the database.</td>
			</tr>
        {/foreach}
		</tbody>
	</table>
{/block}