<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
body {
    background-color: black;
}
* {
    color: white;
}
ul, li {
    list-style-type: none;
    padding: 0;
    margin: 0;
}
#container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    width: 1000px;
    margin: 0 auto;
    background-color: black;
    margin-top: 150px;
    margin-bottom: 335px;
    border: 2px solid #808080;
    box-sizing: border-box;
}
#contents {
    flex: 1 1 200px;
    margin: 10px;
    padding: 15px;
    background-color: #f9f9f9;
    width: calc(100% - 40px);
    position: relative;
    background-color: black;
}
.category_wrap {
    margin-bottom: 20px;
}
.separator, .separator1 {
    width: 100%;
    height: 2px;
    margin: 0;
}
.separator {
    position: relative;
    bottom: 0;
    background-color: #000;
}
.separator1 {
    position: relative;
    margin-top: 20px;
    background-color: grey;
}
.separator2 {
    height: 1px;
    width: 950px;
    background-color: grey;
    margin-top: 3px;
    margin-bottom: 20px;
    position: relative;
}
.contegory_contents_wrap {
display: flex; 
flex-direction: row; 
justify-content: space-between; 
align-items: center; 
flex-wrap: wrap; 
margin-bottom: 20px; 


}
.contegory_contents_wrap a {
    color: white;
    text-decoration: none;
}
.category_content, .cart_content {
    display: flex;
    flex-direction: row;
    gap: 20px;
    padding: 0;
    margin: 0;
    flex-wrap: wrap;
  
}
#cart-count, #giftcon {
    display: inline-block;
    margin-left: 5px;
    padding: 0 4px;
    background-color: #ff0000;
    color: white;
    border-radius: 50%;
    font-size: 12px;
    line-height: 20px;
    height: 20px;
    width: 20px;
    text-align: center;
    vertical-align: middle;
}
.category_title {
    display: inline-block;
    margin-right: 10px;
    align-items: center;
}
#bbb {
    border-bottom: 2px solid #808080;
    padding-bottom: 15px;
}
#ccc {
    border: 1px solid #808080;
    padding-bottom: 15px;
}
.table_wrap {
    display: flex;
    justify-content: space-between;
    width: 100%; /* 전체 너비를 100%로 설정하여 테이블이 부모의 전체 너비를 사용하도록 설정 */
 
}

#cart-count, #giftcon {
display: inline-block; 
margin-left: 5px; 
padding: 0 4px; 
background-color: #ff0000; 
color: white; 
border-radius: 50%; 
font-size: 12px; 
line-height: 20px; 
height: 20px; 
width: 20px; 
text-align: center; 
vertical-align: middle; 
}
.left{
padding-left:100px;

}
table.right td {
    padding: 8px;
  

}

table.right {
    width: 100%;
    border-collapse: collapse; /* 테이블 경계선 합치기 */

}

td input[type="text"] {
           background-color: black; /* 입력 필드 배경색 */
           color: white; /* 입력 텍스트 색상 */
           outline: none; /* 포커스 시 테두리 제거 */
           padding: 5px; /* 입력 필드 내부 여백 */
           border: none; 
           color:red;
}


.quantity-container {
    display: flex; /* Flexbox 사용 */
    align-items: center; /* 수직 중앙 정렬 */
   
}

.container {
    display: flex; /* Flexbox 사용 */
    align-items: center; /* 수직 중앙 정렬 */
}
 input[type='button'] {
        height: 30px; /* 버튼의 높이 조정 */
       
        width: 100px; /* 버튼의 너비 조정 */
        margin: 0 15px; /* 버튼 사이의 좌우 간격을 10px로 설정 */    
        box-sizing: border-box; /* 패딩과 테두리를 너비와 높이에 포함 */
        background-color: #d3d3d3; /* 버튼 배경색을 그레이로 설정 */
        color: #333; /* 버튼 텍스트 색상 조정 */
        border: 1px solid #ccc; /* 버튼 테두리 색상 조정 */
        border-radius: 5px; /* 버튼 테두리 둥글게 만들기 */
        padding: 5px; /* 버튼의 패딩 조정 */
        cursor: pointer; /* 버튼 클릭 시 커서 모양 변경 */
        position: relative; /* 상대 위치 지정 */
        top:8px;
   
}


.button-container {
    display: flex; /* 버튼들을 수직으로 정렬하기 위해 Flexbox 사용 */
    flex-direction: column; /* 버튼들을 수직으로 정렬 */
    align-items: center; /* 버튼을 중앙 정렬 */
  	
    margin-top: 15px; /* 필요에 따라 상단 마진 조정 */

}
.button-container button {	
    height: 18px; /* 버튼의 높이 조정 */
    width: 40px; /* 버튼의 너비 조정 */
    margin: 0; /* 버튼 사이의 마진 제거 */
    box-sizing: border-box; /* 패딩과 테두리를 너비와 높이에 포함 */
    display: flex; /* 버튼 텍스트 중앙 정렬 */
    align-items: center; /* 버튼 텍스트 수직 중앙 정렬 */
    justify-content: center; /* 버튼 텍스트 수평 중앙 정렬 */
}

button {
    background-color: #333;
    color: white;
    border: none;
    padding: 5px 10px;
    margin: 2px 0; /* 버튼 사이의 간격 */
    cursor: pointer;
}

button:hover {
    background-color: #555;
}


#cnt{
color:black;
margin-left: -20px; /* 버튼과 입력 필드 사이의 간격 */

}
#giftprice {
    position: absolute; /* 위치를 절대적으로 설정 */
    top: 18px; /* 원하는 위치를 조정합니다 */
   
    width: 200px;
    margin-right: 58px; /* 여백을 조정합니다 */
    
    background-color: black; /* 배경색을 검은색으로 설정 */
    color: white; /* 텍스트 색상을 흰색으로 설정 */
    
    border: 1px solid white; /* 선택 상자의 테두리 색상도 설정 가능 */
      border-radius: 4px; /* 테두리 둥글게 설정 */
}

/* 옵션 텍스트 색상 변경 */
#giftprice option {
    background-color: black; /* 드롭다운 옵션의 배경색 설정 */
    color: white; /* 드롭다운 옵션의 텍스트 색상 설정 */

}
.gift-price-select {
    width: 100px; /* 너비 조정 */
    height: 40px; /* 높이 조정 */
    font-size: 20px; /* 폰트 크기 조정 (필요시) */
    box-sizing: border-box; /* 패딩과 테두리를 너비와 높이에 포함 */
}

.label {


vertical-align: top; /* 수직 정렬을 위쪽으로 맞춤 */
       }
.content {
    padding-left: 10px; /* 내용과 label 사이의 간격 조정 */
    
}
.right tr td {
    text-align: left;
}

/* `left`와 `right` 테이블 사이의 간격을 조정 */
.left, .right {
    margin-right: 50px; /* 왼쪽 테이블과의 간격을 50px로 설정 (원하는 값으로 조정) */
}

/* `right` 테이블의 두 번째 td에 오른쪽 여백 추가 */
.right tr td:nth-child(2) {
    padding-left: 20px; /* 두 번째 td의 왼쪽 여백을 추가 (원하는 값으로 조정) */
}
.right tr {
 
    min-height: 50px; /* 최소 높이 설정 */

    overflow: hidden; /* 내용이 잘리지 않도록 스크롤 추가 */
}
#empty-row {
    height: 90px; /* 원하는 높이로 설정 */
}
 #price {
    text-decoration: line-through; /* 취소선 추가 */
    color:grey;
}
#cnt {
	margin-top:15px;
    background-color: white;
    height:25px;
    width: 25px;
    margin-left: 0px; /* 오른쪽으로 이동시키기 위해 마진 자동 조정 */
}

.right td {
    vertical-align: middle; /* 셀 내용 수직 중앙 정렬 */
}

td {
    vertical-align: middle; /* 또는 top, bottom, baseline 등으로 설정 */
}
#tol{
  position: relative;
  top: 2px; /* 원하는 값으로 조정 */

}
#total-row {
    position: relative;
    top: 15px; /* 아래로 이동 */
}
#replace1{
 	position: relative;
 	top:-80px;
   
}


</style>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %> <!-- 헤더 포함 -->
 <div id="container">
    <div id="contents">
        <div class="category_wrap">
            <div class="separator"></div>
        </div>
        <div class="contegory_contents_wrap">
            <ul class="category_content">
                <li><a href="/package" class="no-underline">패키지</a></li>
                <li><a href="/giftcard" class="no-underline">기프트카드</a></li>
                <li><a href="/combo" class="no-underline">콤보</a></li>
                <li><a href="/popcorn" class="no-underline">팝콘</a></li>
                <li><a href="/drink" class="no-underline">음료</a></li>
                <li><a href="/snack" class="no-underline">스낵</a></li>
            </ul>
            <ul class="cart_content">
                <li><a href="/cart" class="no-style-link">장바구니</a><span id="cart-count">0</span></li>
            </ul>   
        </div>
 
       
        <div class="category_product_wrap">           
                <div id="bbb">
                    <strong class="category_title">${arItem.item_name}</strong>
                </div>    
                <div class="table_wrap">
                	<table class="left" >
                		<tr>
                			<td>
                				<input type='hidden' id='hiddenid' value='${arItem_id}'>
                    			<input type='hidden' id='userid' value="${uid}">
                    			<input type='hidden' id='discount' value="${arItem.discount_price}">
                    		</td>
                    	</tr>                    	                    	
                    	<tr>
                    		<td style="width:270px; height:270px;"><img src="${imagePath}" id="imagepath" alt="패키지1"></td>
                    	</tr>
                    	<tr>
                    		<td>
                    		 	<input type='button' id='btncart' value='장바구니'> 
                                <input type='button' id='btnbuy' value='구매하기'>
                    		</td>	
						</tr>                	
                	
                	</table>                
                	<table class="right" >             						   				 
                		<tr>
                			<td>가격:</td>
                			<td>
	                			<span id="discount-price">${arItem.discount_price}</span>&nbsp;&nbsp;&nbsp;&nbsp;
	           					 <span id="price">${arItem.price}</span>               
                			</td>
  
                		<tr>
                			<td>상품구성:</td><td>${arItem.composition}</td><td></td>
                		</tr>	
                		<tr>               		
                		   <td class="label">유효기간:</td>
				            <td class="content">				     
				                    ${arItem.period}		  
				            </td>
				            <td></td>   				
                		</tr>	
                		<tr id="origin-row">
                			<td id="origin">원산지:</td><td>${arItem.origin}</td>
                			<td></td>
                		</tr>
                		 <tr id="empty-row" style="display: none;">
					        <td colspan="3"></td> <!-- 빈 셀을 가진 빈 줄 -->
					    </tr>	
                		<tr id="replace">                        		      			
                			<td id="ccnt">수량:</td> 
                			<td class="quantity-container">
						        <div class="input-container">
						           <input type="text" value="1" id="cnt" data-min="1" data-max="10" readonly>
						        </div>
						        <div class="button-container">						        
						            <button id="increase">+</button>
						            <button id="decrease">-</button>
						        </div>
						    </td>         			
                		</tr>
                		<tr id="total-row">
                			<td>총 결제금액:</td><td id="tol"><input type="text" style="font-size:16px; width:60px;" readonly id="totalprice" value="${arItem.discount_price}">원</td>
                			<td></td>
                		<tr>
                	</table>                     
              </div>         
        </div>
 	</div>
</div>                                    
        
 <div id="info">
  ※구매할 수 있는 수량은 최대 10개 입니다.
</div>   
	    <form id="payForm" action="/dostorepay" method="post" style="display:none;">
    	<input type="hidden" id="productData" name="productData">
		</form>     
<%@ include file="/WEB-INF/views/footer/footer.jsp" %> <!-- 푸터 포함 -->		
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>

function updateCartCount(customer_id) {
	
	
    $.ajax({
        url: '/countcart',
        type: 'post',
        data: { customer_id: customer_id },
        dataType: 'text',
        cache: false,
        success: function(data) {
            $('#cart-count').text(data);
        }
    });
}



$(document)
.ready(function() {
	
	
	 function updateTotalPrice() {
	        var $input = $('#cnt');
	        var cnt = parseInt($input.val(), 10);

	        // 수량이 비어있거나 유효하지 않은 경우 기본값으로 min 설정
	        if (isNaN(cnt) || cnt < parseInt($input.data('min'), 10)) {
	            cnt = parseInt($input.data('min'), 10);
	            $input.val(cnt);
	        }

	        // 할인가격을 숨겨진 필드에서 추출
	        var discountText = $('#discount').val();
	        console.log("Discount Text:", discountText); // 값 확인
	        
	        // 쉼표 제거 후 숫자로 변환
	        var discount = parseInt(discountText.replace(/,/g, ''), 10);
	        console.log("Parsed Discount:", discount); // 값 확인

	        // 할인 가격이 유효하지 않은 경우 기본값으로 0 설정
	        if (isNaN(discount)) {
	            discount = 0;
	        }

	        // 총 가격 계산
	        var totalPrice = discount * cnt;

	        // 총 가격 표시 업데이트
	        $('#totalprice').val(totalPrice.toLocaleString());
	    }

	    // 수량 증가 버튼 클릭 이벤트
	    $('#increase').on('click', function() {
	        var $input = $('#cnt');
	        var currentValue = parseInt($input.val(), 10);
	        var maxValue = parseInt($input.data('max'), 10);

	        if (!isNaN(currentValue) && currentValue < maxValue) {
	            $input.val(currentValue + 1).change();
	        }
	    });

	    // 수량 감소 버튼 클릭 이벤트
	    $('#decrease').on('click', function() {
	        var $input = $('#cnt');
	        var currentValue = parseInt($input.val(), 10);
	        var minValue = parseInt($input.data('min'), 10);

	        if (!isNaN(currentValue) && currentValue > minValue) {
	            $input.val(currentValue - 1).change();
	        }
	    });

	    // 수량 입력 필드 변경 이벤트
	    $('#cnt').on('change', function() {
	        updateTotalPrice();
	    });

	    // 페이지 로드 시 초기 총 가격 계산
	    updateTotalPrice();
         
    $('#cnt').change(); 
	

	let customer_id=$('#userid').val();
	console.log(customer_id);
	
	updateCartCount(customer_id);
	
	 $(window).on('pageshow', function(event) {
         if (event.originalEvent.persisted) {
             window.location.reload();
             updateCartCount(customer_id);
         }
     });

     // 브라우저 히스토리 상태가 변경될 때 새로 고침 처리
     $(window).on('popstate', function(event) {
         // 이 부분은 필요에 따라 조정
         // 페이지가 새로 고쳐질 필요가 없는 경우 주석 처리
         window.location.reload();
         updateCartCount(customer_id);
     });
	 
     function checkItemInCart(item_id) {
         return $.ajax({
             url: '/checkitem', // 서버에서 장바구니에 아이템이 있는지 확인하는 엔드포인트
             type: 'post',
             data: {item_id: item_id },
             dataType: 'json'
         });
     }
 	 	 
     // 페이지 로드 시 카운트 업데이트he
    // updateCartCount();
                         	
	$('#cnt').focus();
	
    function updatePriceDisplay() {
        var price = $('#price').text().trim();
        var discountPrice = $('#discount-price').text().trim();

        // 특정 문자열 비교를 위한 조건 추가
        var condition1 = price === discountPrice; // 가격과 할인가격이 같은 경우
        var condition2 = price === "금액충전형" && discountPrice === "금액충전형"; // 두 값이 특정 문자열인 경우

        if (condition1 || condition2) {
            $('#price').hide(); // 가격을 숨깁니다
        } else {
            $('#price').show(); // 가격을 표시합니다
        }
        $('#discount-price').show(); // 할인가격은 항상 표시합니다
    }

    // 페이지 로드 시 가격 표시 업데이트
    updatePriceDisplay();
	
		
    function updateUIBasedOnDiscount() {
        var discountPrice = $('#discount').val().trim();

        if (discountPrice === '금액충전형') {
            $('#replace').replaceWith(`
                <tr id="replace1">
                    <td id="charge">충전금액선택:</td>
                    <td class="quantity-container">
                        <select id="giftprice" style="width:150px;">
                            <option value="10000">10,000</option>
                            <option value="20000">20,000</option>
                            <option value="30000">30,000</option>
                            <option value="40000">40,000</option>
                            <option value="50000">50,000</option>
                        </select>
                    </td>
                </tr>
            `);            
            $('#totalprice').val('10,000');
            $('#totalprice input').val('10,000');
            $('#btncart').hide();
            $('.quantity-buttons').hide();
            $('#origin-row').hide(); // 원산지 행 숨기기
            $('#empty-row').show(); // 빈 줄 표시
            $('.button-container').hide();
            $("#ccnt").hide();
        } else {         

        	let price = $('#price').text();
        	
        	
            $('#totalprice input').val(discountPrice);
            
            $('#btncart').show();
            $('.quantity-buttons').show();
            $('#origin-row').show(); // 원산지 행 표시
            $('#empty-row').hide(); // 빈 줄 숨기기
            $('#discount-price').text(discountPrice + '원');
            $('#price').text(price+'원');
        
        }
    }

    // 페이지 로드 시 UI 업데이트
    updateUIBasedOnDiscount();

    // 수량 선택 시 총 가격 업데이트 (if applicable)
    $(document).on('change', '#giftprice', function() {
        var selectedValue = $(this).val();
        $('#totalprice input').val(parseInt(selectedValue, 10).toLocaleString());
    });
    
         
 var queryString = window.location.search;
 var urlParams = new URLSearchParams(queryString);
 var id = urlParams.get('id');
 
 // ID 값을 콘솔에 출력
 console.log('ID:', id);
 $('#hiddenid').val(id);

console.log(customer_id);
	
	$.ajax({
		url:'/countcart',type:'post',data:{customer_id:customer_id},dataType:'text',
		success:function(data){
			 $('#cart-count').text(data);
			
			}
})
})

.on('change','#giftprice',function(){
	let giftprice=$('#giftprice option:selected').text();
	console.log(giftprice);
	let price=$('#price').val();
	$('#totalprice').val(price);
	
	$('#price').val(giftprice+'원');
	$('#totalprice').val('');
	$('#totalprice').val(giftprice ); // Set the value of the #totalprice field
})






.on('click', '#btncart', function(event) {
    event.preventDefault(); // 기본 동작을 막습니다.

    let item_id = $('#hiddenid').val();
    let qty = parseInt($('#cnt').val(), 10);
    let totalStr = $('#totalprice').val();
    let total = parseInt(totalStr.replace(/,/g, ''), 10);
    let customer_id = $('#userid').val();


    console.log('Item ID:', item_id);
    console.log('Qty:', qty);
    console.log('Total:', total);
    console.log('Customer ID:', customer_id);

    if ($('#userid').val() === '') {
        alert("로그인 후 이용해주세요");
        return false;
    }

    $.ajax({
        url: '/checkitem',
        type: 'post',
        data: { customer_id: customer_id, item_id: item_id },
        dataType: 'json',
        success: function(data) {
            console.log('Server response:', data);

            // 응답 데이터가 배열이므로 첫 번째 요소에 접근합니다.
            let itemData = data[0] || {}; // 첫 번째 요소를 가져옵니다.

            // item_qty와 item_count를 추출합니다.
            let itemQty = itemData.item_qty || 0; // 현재 장바구니에 있는 품목 수량
            let itemCount = itemData.item_count || 0; // 장바구니에 있는 품목 종류 수

            console.log('Item Qty:', itemQty);
            console.log('Item Count:', itemCount);

            // 총 수량을 계산합니다.
            let newQty = itemQty + qty;
            console.log('New Qty:', newQty);

            // 최대 수량
            const maxQty = 10;

            if (itemCount >= 10 && itemQty === 0) {
                alert('장바구니의 품목 종류가 10개 이상이므로 새로운 품목을 추가할 수 없습니다.');
            } else if (newQty > maxQty) {
                let remainingQty = maxQty - itemQty;
                console.log("Remaining Qty:", remainingQty);
                alert('해당 품목의 장바구니 수량을 확인해주세요');
             
            } else {
            	console.log("itemQty"+itemQty);
                if (itemQty > 0) {
                    $.ajax({
                        url: '/updatecart',
                        type: 'post',
                        data: {
                            customer_id: customer_id,
                            item_id: item_id,
                            qty: newQty // 기존 수량에 추가할 수량을 더한 값
                        },
                        dataType: 'text',
                        success: function(response) {
                            if (response === 'ok') {
                                window.location.href = '/cart'; // 클릭 시 페이지 이동
                            } else {
                                alert('Error updating cart');
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Update cart AJAX request error:', status, error);
                            alert('Error updating cart');
                        }
                    });
                } else {
                    $.ajax({
                        url: '/insertcart',
                        type: 'post',
                        data: {
                            customer_id: customer_id,
                            item_id: item_id,
                            qty: qty, // 새 품목은 수량을 직접 설정
                            total: total
                        },
                        dataType: 'text',
                        success: function(response) {
                            if (response === 'ok') {
                                window.location.href = '/cart'; // 클릭 시 페이지 이동
                            } else {
                                alert('Error inserting into cart');
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Insert cart AJAX request error:', status, error);
                            alert('Error inserting into cart');
                        }
                    });
                }
            }
        },
        error: function(xhr, status, error) {
            console.error('Check item AJAX request error:', status, error);
            alert('Error checking item');
        }
    })
})


let selectedItems = []; // 전역 변수로 선언

$('#btnbuy').on('click', function(e) {
    e.preventDefault(); // 링크의 기본 동작을 방지

    if ($('#userid').val() === '') {
        alert("로그인 후 이용해주세요");
        return false; // 이동을 막기 위해 return false를 사용
    }    

    let item_id = $('#hiddenid').val();
    console.log('item_id:', item_id);

    $.ajax({
        url: '/selectitem',
        type: 'POST',
        data: { item_id: item_id },
        dataType: 'json',
        success: function(data) {
            console.log('Server Response:', data);

            // 데이터가 배열일 경우 첫 번째 항목을 사용
            if (Array.isArray(data) && data.length > 0) {
                let item = data[0]; // 첫 번째 항목 사용

                // 기본값을 설정하고 문자열을 정리
                let discount_price = (item.discount_price || '0').replace(/원/g, '').replace(/,/g, '').trim();
                let price = (item.price || '0').replace(/원/g, '').replace(/,/g, '').trim();
               
                let isDiscountPriceSpecial = discount_price === '금액충전형';
                let isPriceSpecial = price === '금액충전형';

                // 가격을 숫자로 변환, 금액충전형인 경우 0으로 설정
                let discountPriceNum = isDiscountPriceSpecial ? 0 : parseFloat(discount_price) || 0;
                let PriceNum = isPriceSpecial ? 0 : parseFloat(price) || 0;
                
                let qty = parseInt($('#cnt').val()) || 1; // 수량이 없거나 유효하지 않으면 기본값 1
                
                // itemData 객체 생성
                let itemData = {
                    item_id: item.id,
                    name: item.name,
                    composition: item.composition,
                    image_path: item.image_path,
                    discount_price: discountPriceNum, // 할인 가격
                    cart_price: PriceNum, // 카트 가격
                    total: 0, // 초기값 설정
                    qty: qty
                };

                // 초기값 설정
                let totalPrice = 0;
                let discount1 = 0;
                let totalDiscount = 0;
                let finalPrice = 0;

                if (isDiscountPriceSpecial) {
                    // '금액충전형'일 때
                    let priceInputValue = $('#price').val().replace(/원/g, '').replace(/,/g, '').trim();
                    let priceNumFromInput = parseFloat(priceInputValue) || 0;
                    itemData.total = priceNumFromInput * qty; // '금액충전형'일 때 price 값을 사용하여 total 계산
                    itemData.discount_price=priceNumFromInput;
                    
                    totalPrice = itemData.total;
                    discount1 = 0;
                    totalDiscount = 0;
                    finalPrice = totalPrice;
                } else {
                    // 금액충전형이 아닐 경우
                    totalPrice = PriceNum * qty;
                    discount1 = discountPriceNum * qty;
                    totalDiscount = totalPrice - discount1;
                    finalPrice = totalPrice - totalDiscount;

                    itemData.total = finalPrice; // 최종 가격
                }

                selectedItems.push(itemData);
                
                console.log($('#cnt').val());

                // 폼 데이터 설정
                $('#productData').val(JSON.stringify({
                    items: selectedItems,
                    totalPrice: totalPrice,
                    totalDiscount: totalDiscount,
                    finalPrice: finalPrice
                }));

                console.log('Product data:', $('#productData').val()); // 디버깅: 전송할 데이터 출력

                $('#payForm').submit(); // 폼 제출
            } else {
                console.error('No data received from server.');
            }
        },
        error: function(xhr, status, error) {
            console.error('AJAX Error:', status, error);
        }
    })
       
})


   
</script>
</html>
