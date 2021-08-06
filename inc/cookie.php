<?php 
function loadData($cookiename,&$data){
	if(isset($_COOKIE[$cookiename])){
		$data=unserialize($_COOKIE[$cookiename]);
}else{setcookie($cookiename,serialize($data),time()+3600);}
}
function addData($cookiename,$id_sanpham,$soluongmua_sanpham,$dongia_sanpham,$mau_sanpham,$sizemua_sanpham,$hinhanh_sanpham,$ten_sanpham){
	if(isset($_COOKIE[$cookiename])){
		$data=unserialize($_COOKIE[$cookiename]);
$data[$id_sanpham]=array("id_sanpham"=>$id_sanpham,"soluongmua_sanpham"=>$soluongmua_sanpham,"dongia_sanpham"=>$dongia_sanpham,"mau_sanpham"=>$mau_sanpham,"sizemua_sanpham"=>$sizemua_sanpham,"hinhanh_sanpham"=>$hinhanh_sanpham,"ten_sanpham"=>$ten_sanpham);	
		setcookie($cookiename,serialize($data),time()+3600);
	}
	else{
$data[$id_sanpham]=array("id_sanpham"=>$id_sanpham,"soluongmua_sanpham"=>$soluongmua_sanpham,"dongia_sanpham"=>$dongia_sanpham,"mau_sanpham"=>$mau_sanpham,"sizemua_sanpham"=>$sizemua_sanpham,"hinhanh_sanpham"=>$hinhanh_sanpham,"ten_sanpham"=>$ten_sanpham);	
setcookie($cookiename,serialize($data),time()+3600);
	}
}
function deleteData($cookiename,$id_sanpham){
		if(isset($_COOKIE[$cookiename])){
		$data=unserialize($_COOKIE[$cookiename]);
			unset($data[$id_sanpham]);
			setcookie($cookiename,serialize($data),time()+3600);
		}
	
}
function count_giohang($cookiename)
{
	if(isset($_COOKIE[$cookiename]))
		return count(unserialize($_COOKIE[$cookiename]));
	else
		return 0;
}
?>