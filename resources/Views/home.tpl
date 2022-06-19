{extends file="Layouts/main.tpl"}

{block 'internalStyles'}
	<style>
        #carouselExampleControls .carousel-item img {
            object-fit: cover;
            object-position: center;
            height: 50vh;
            overflow: hidden;
        }
	</style>
{/block}

{block 'content'}
	<div class="container">
		<div class="container-fluid p-5 bg-dark text-white rounded-4">
			<h1 class="display-5 fw-bold">Welcome to Majengo Secondary School</h1>
			<p class="col-md-8 fs-4">Welcome to Majengo Secondary School. Our mission is to provide good and
				Genuine education for youth for the good future of the country. Our vision is to provide top tier
				scholars for Tanzania.</p>
		</div>
		<div id="carouselExampleControls" class="carousel slide carousel-fade border-top border-bottom py-4 my-4"
			 data-bs-ride="carousel">
			<div class="carousel-inner">
                {foreach $slideshows as $slideshow}
					<div class="carousel-item {if ($slideshow@first)}active{/if}">
						<img src="{$slideshow.src}" class="d-block w-100" alt="{$slideshow.alt}">
					</div>
                {/foreach}
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
					data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
					data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Community</h5>
						<p class="card-text">Situated in Majengo area in Moshi Municipal, Moshi Urban district, in the
							region of Kilimanjaro, the school serves the education needs of students all over
							The United Republic of Tanzania and especially Northern Zone students. The
							school was established in 1987 and has a very diverse community of students
							and staff.</p>
						<a href="/about" class="btn btn-primary">More ...</a>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Special title treatment</h5>
						<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}