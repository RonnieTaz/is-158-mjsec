{extends file="Layouts/main.tpl"}

{block 'content'}
	<main class="container">
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
						and the supervision of the Catholic Diocese of Moshi.
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
						<strong>This is the second item's accordion body.</strong> It is hidden by default, until the
						collapse plugin adds the appropriate classes that we use to style each element. These classes
						control the overall appearance, as well as the showing and hiding via CSS transitions. You can
						modify any of this with custom CSS or overriding our default variables. It's also worth noting
						that just about any HTML can go within the <code>.accordion-body</code>, though the transition
						does limit overflow.
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
						<strong>This is the third item's accordion body.</strong> It is hidden by default, until the
						collapse plugin adds the appropriate classes that we use to style each element. These classes
						control the overall appearance, as well as the showing and hiding via CSS transitions. You can
						modify any of this with custom CSS or overriding our default variables. It's also worth noting
						that just about any HTML can go within the <code>.accordion-body</code>, though the transition
						does limit overflow.
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
							<strong>Our vision </strong> is hidden by default, until the
							collapse plugin adds the appropriate classes that we use to style each element. These
							classes
							control the overall appearance, as well as the showing and hiding via CSS transitions. You
							can
							modify any of this with custom CSS or overriding our default variables. It's also worth
							noting
							that just about any HTML can go within the <code>.accordion-body</code>, though the
							transition
							does limit overflow.
						</p>
						<p>
							<strong>This is the third item's accordion body.</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</main>
{/block}