{extends file="Layouts/main.tpl"}

{block "content"}
	<main class="container">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			{foreach $staffs as $staff}
				<div class="col">
					<div class="card">
						<svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" role="img"
							 aria-label="Placeholder: {$staff.name}" preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#868e96"></rect>
							<text x="40%" y="50%" fill="#dee2e6" dy=".3em">{$staff.name}</text>
						</svg>
						<div class="card-body">
							<h5 class="card-title">{$staff.name}</h5>
							<p class="card-text">{$staff.content}</p>
						</div>
						<ul class="list-group list-group-flush">
							{foreach $staff.subjects as $subjects}
								<li class="list-group-item">{$subjects}</li>
							{/foreach}
						</ul>
						<div class="card-body">
							<a href="tel:{$staff.phone}" class="card-link">Phone Number</a>
							<a href="mailto:{$staff.email}" class="card-link">Email</a>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
	</main>
{/block}