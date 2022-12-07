<style>
	.logo {
    height: 40px;
    margin: auto;
    font-size: 20px;
    background: #fb219b;;
    padding: 7px 11px;
    border-radius: 50% 50%;
    /* color: #fb219b; */
}
.loanms{
  margin-top: 10px;
  max-width: 35%;
  }

.user-logout{
  font-weight:bold; 
  margin-left:30%;
}
</style>

<nav class="navbar navbar-light fixed-top bg-warning" style="padding:0; ">
  <div class="container-fluid mt-2 mb-2">
  	<div class="col-lg-12">
  		<div class="col-md-1 float-left" style="display: flex;">
  			<div>
          <img class="logo" src="assets/img/logo.png" alt="Logo">
  				<!-- <span class="fa fa-sort-alpha-up-alt"></span> -->
  			</div>
  		</div>
      <div class="col-md-4 float-left text-white loanms" >
        <large style="color: black;"><b>Micro Finance Management System- By Rakibul & Mokibul</b></large>
      </div>
	  	<div class="col-md-2 float-right text-white loanms">
	  		<a href="ajax.php?action=logout" class="text-danger user-logout">Logout-- <?php echo $_SESSION['login_name'] ?> <i class="fa fa-power-off"></i></a>
	    </div>
    </div>
  </div>
  
</nav>