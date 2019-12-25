<?
function getOneProduct($product_id){
	$sql="SELECT p.product_id,
			p.product_name,
			p.product_price,
			p.product_year,
			p.product_category_id,
			p.product_model_id,
			p.product_count,
			i.img_link FROM product AS p
			LEFT JOIN images AS i
				ON p.product_id=i.product_id
			 WHERE p.product_id=$product_id";
	
	return query($sql);
}


function get_all_category(){

	$sql="SELECT * FROM category WHERE active=1";
	
	return query($sql);
}




function getOneCategoryProduct($category_id){

	$sql="SELECT p.product_id,
			p.product_name,
			p.product_price,
			p.product_year,
			p.product_category_id,
			p.product_model_id,
			p.product_count,
			i.img_link
			 FROM product AS p
					LEFT JOIN images AS i
					ON p.product_id=i.product_id
	 		WHERE product_category_id=$category_id";
	
	return query($sql);
}

function getAllProduct(){
	$sql="SELECT p.product_id,
			p.product_name,
			p.product_price,
			p.product_year,
			p.product_category_id,
			p.product_model_id,
			p.product_count,
			i.img_link
			 FROM product AS p
					LEFT JOIN images AS i
					ON p.product_id=i.product_id";
	
	return query($sql);

}


function query($sql){
	global $link;
	$res=mysqli_query($link,$sql);
	if(mysqli_num_rows($res)>0){
		while ($row=mysqli_fetch_assoc($res)) {
			$arr[]=$row;
		}
	}else
		return false;
	return $arr;
}


?>