<div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar" role="navigation">
<ul class="nav flex-column pl-1">			
<?php if($user->isAdmin()) { ?>		
<li class="nav-item"><a class="nav-link" href="dashboard.php"><strong>Dashboard</strong></a></li>
<li class="nav-item">
	<a class="nav-link" href="#submenu1" data-toggle="collapse" data-target="#submenu1"><strong>Books</strong> ▾</a>
	<ul class="list-unstyled flex-column pl-3 collapse show" id="submenu1" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="books.php"><strong>Manage Books</strong></a></li>
		<li class="nav-item"><a class="nav-link" href="category.php"><strong>Категория</strong></a></li>
		<li class="nav-item"><a class="nav-link" href="author.php"><strong>Автор</strong></a></li>
		<li class="nav-item"><a class="nav-link" href="publisher.php"><strong>Издателство</strong></a></li>
		<li class="nav-item"><a class="nav-link" href="rack.php"><strong>Ранк</strong></a></li>	
	</ul>
</li>
<li class="nav-item"><a class="nav-link" href="issue_books.php"><strong>Книги с Проблеми</strong></a></li>
<li class="nav-item"><a class="nav-link" href="user.php"><strong>Потребител</strong></a></li>
<li class="nav-item"><a class="nav-link" href="logout.php"><strong>Logout</strong></a></li>
<?php } else { ?>

<?php } ?>
</ul>
</div>




