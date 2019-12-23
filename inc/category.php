<?
include_once('db.php');
include_once('functions.php');
$categories=get_all_category();

?>

<div class="cat_menu_container">
								<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
									<div class="cat_burger"><span></span><span></span><span></span></div>
									<div class="cat_menu_text">categories</div>
								</div>

								<ul class="cat_menu">
									<?
									foreach ($categories as $category): 
										
									?>
									<li><a href="shop.php?category_id=<?=$category['id']?>"><?=$category['category_name']?> <i class="fas fa-chevron-right ml-auto"></i></a></li>
									<?
								endforeach;
									?>
								</ul>
							</div>