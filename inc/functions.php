<?

function get_all_category(){

	$sql="SELECT * FROM category WHERE active=1";
	
	return query($sql);
}


function getOneCategoryProduct($category_id){

	$sql="SELECT * FROM product WHERE product_category_id=$category_id";
	
	return query($sql);
}

function getAllProduct(){
	$sql="SELECT * FROM product";
	
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