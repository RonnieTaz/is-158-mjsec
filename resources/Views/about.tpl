{extends file="Layouts/main.tpl"}

{block 'content'}
	<div class="accordion" id="accordionPanelsStayOpenExample">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseOne">
					Historical Background
				</button>
			</h2>
			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
				 aria-labelledby="panelsStayOpen-headingOne">
				<div class="accordion-body">
					Majengo Secondary School was established in the year 1987 under the Brother of Blood of Christ
					and the supervision of the Catholic Diocese of Moshi. The school is located in Majengo ward, Moshi Municipal,
					Kilimanjaro Region, 3 Kilometers from the town center. {$history}
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
						aria-controls="panelsStayOpen-collapseTwo">
					Education
				</button>
			</h2>
			<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
				 aria-labelledby="panelsStayOpen-headingTwo">
				<div class="accordion-body">
					<p>
						Majengo secondary school offers both Ordinary Level (O-Level) and Advanced Level (A-Level) Education
						and accepts students of both genders. It is mainly a day school but hostels are available to those who
						wish to board at the school at an affordable price.
					</p>
					<p>
						The school is registered under NECTA with the registration number S0485 and its curriculum is
						mainly based on NECTA's curriculum for standard Secondary schools.
					</p>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingThree">
				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseThree">
					Staffs and Subject
				</button>
			</h2>
			<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
				 aria-labelledby="panelsStayOpen-headingThree">
				<div class="accordion-body">
					<p>
						Majengo Secondary School offers a plethora of subjects for both its O-Level and A-Level educations.
						<br>Subjects offered at Ordinary Level include the following:
					</p>
					<ul class="list-group ">
						<li class="list-group-item">Cras justo odio</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
						<li class="list-group-item">Porta ac consectetur ac</li>
						<li class="list-group-item">Vestibulum at eros</li>
						<li class="list-group-item">Cras justo odio</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
					</ul>
					<p class="mt-2">
						Subjects offered at Advanced Level include the following:
					</p>
					<ul class="list-group ">
						<li class="list-group-item">Cras justo odio</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
						<li class="list-group-item">Porta ac consectetur ac</li>
						<li class="list-group-item">Vestibulum at eros</li>
						<li class="list-group-item">Cras justo odio</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingFour">
				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseFour">
					Vision and Mission
				</button>
			</h2>
			<div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse"
				 aria-labelledby="panelsStayOpen-headingFour">
				<div class="accordion-body">
					<p>
						<strong>Our vision </strong> is {$vision}
					</p>
					<p>
						<strong>Our mission</strong> is {$mission}
					</p>
				</div>
			</div>
		</div>
	</div>
{/block}