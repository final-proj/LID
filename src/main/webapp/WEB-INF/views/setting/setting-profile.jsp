<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Love in Daily</title>
   <!-- stylesheet.jsp -->
   <c:import url="../common/stylesheet.jsp" />
   <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <!--  닉네임 중복 체크 -->
   <style>
   div#nickname-container{position:relative; padding:0px;}
   div#nickname-container span.guide {display:none;font-size: 14px;position:absolute; right:30px;}
   div#nickname-container span.ok{color: #337ab7;}
    div#nickname-container span.error, span.invalid{color:#ed7183;}
    
    /* 지도 API style */
     .map_wrap {position:relative;width:100%;height:350px; margin-top : 5%;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
   </style>
   
   </head>
<body>
   <!-- header 영역 -->
   <c:import url="../common/header.jsp" />


    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover">

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3">
              
              <c:import url="../common/setting-menubar.jsp">
               <c:param name="profile" value="active"></c:param>
            </c:import>
              
            </div>
            <div class="col-md-8">

              <!-- Basic Information
              ================================================= -->
              <div class="edit-profile-container">
                <div class="block-title">
                  <h4 class="grey"><i class="icon ion-android-checkmark-circle"></i>프로필 설정</h4>
                  <div class="line"></div>
                      <div class="create-post">
                <div class="row">
                  <div class="col-md-12">
                    <div class="tools">
                    <div class="img-wrapper" data-toggle="modal" data-target=".profileImg">
                    <button class="btn btn-primary" style="width:100%;">
                         <i class="ion-plus"></i> 프로필 사진 변경/등록</button>
                  </div>  
                    </div>
                  <div class="modal fade profileImg" id="ProfileEditor" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content" style="width:670px; margin:0 auto; display:block;">
                   <!-- 게시물 작성 모달 내용 부분 --> 
                   <div class="modal-header">
                       <h5 class="modal-title">Modal title</h5>
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                       </button>
                     </div>
                     <div class="modal-body">
                       <c:import url="image-editor.jsp"></c:import>
                     </div>
                     <div class="modal-footer">
                       <button type="button" class="btn btn-primary">프로필 사진 변경/등록</button>
                       <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                     </div>
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
              
                  
                </div>
                <div class="edit-block">
                  <form name="basic-info" id="basic-info" class="form-inline" action="${pageContext.request.contextPath}/setting/updateMemberProfile2.do" method="post"
                        onsubmit="return fn_enroll_validate();">
                  <div class="row">
                      <div class="form-group col-xs-6">
                        
                        <label for="email">My email</label>
                        <input id="email" class="form-control input-group-lg" type="text" name="mEmail" value="${member.mEmail}" disabled="disabled" />
                      </div>
                      <div class="form-group col-xs-6">
                         <input type="hidden" name="mpMno"  value="${member.mNo}"/>
                        <label for="firstname">닉네임</label>
                        <input id="mpNickname" class="form-control input-group-lg" type="text" name="mpNickname" title="Enter first name" value="${mp.mpNickname}" required />
                        <br />
                        
                        <div class="row" id="nickname-container">
                        <span class="guide ok">사용 가능한 닉네임 입니다.</span>
                        <span class="guide error">닉네임이 중복됩니다.</span>
                        <span class="guide invalid">4글자 이상 입력 가능합니다.</span>
                        <input type="hidden" name="nickDuplicateCheck" id="nickDuplicateCheck" value="0" />
                        </div>
                        
                      </div>
                    </div>
                    <br />
                  <div class="line"></div>
                    
                    <!-- 나이입력 -->
                    <div class="row">
                      <div class="form-group col-xs-6">
                       <label for="firstname">나이</label> <br />
                        <label for="month" class="sr-only"></label>
                        
                        <input id="day" style="width : 100px !important;" type="number" name="mpAge" class="form-control" min="10" max="70" value="${mp.mpAge}"/>
                        
                      </div>
                      

                      
                  <div class="form-group col-xs-6">
                       <label for="firstname">성별</label> <br />
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-danger">
							<input type="radio" value="m" name="mpGender" />남
						</label> &nbsp; &nbsp;
						<label class="btn btn-danger">
							<input type="radio" value="f" name="mpGender"/>여
						</label>
						</div>                              
                  </div>
                      

                    </div>
                    <br />
                    <div class="line"></div>
                    <!-- 위치 설정  -->
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="city"> 위치 설정</label> <br />
                        <input id="address1" class="form-control input-group-lg" type="text" name="mpAddress" value="${mp.mpAddress}" style="width : 65% !important;"/> &nbsp; &nbsp; 
                        <button class="btn btn-primary" type="button" onclick="addrSearch();" style="width : 30%;">검색</button>
                        <div class="map_wrap">
                      <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
                      <div class="hAddr">
                          <span class="title">지도중심기준 행정동 주소정보</span>
                          <span id="centerAddr"></span>
                          <input type="hidden" name="latitude"id="latitude" />
                          <input type="hidden" name="longitude"id="longitude" />
                  
                      </div>
                  </div>


                        
                        
                      </div>
                    </div>
                     <br /><div class="line"></div>
                    <div class="row">
                      <div class="form-group col-xs-12">
                        <label for="my-info">내용</label>
                        <textarea id="my-info" name="mpIntroduce" class="form-control" placeholder="${mp.mpIntroduce}" rows="4" cols="400"></textarea>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary" style="width : 40%;float: right;">정보 수정하기</button> 
                   <input type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/setting/deleteMember.do?mEmail=${member.mEmail}'"
                         style="width : 40%; " value="회원 탈퇴" />
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-2 static">
              
              
              
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- script  -->
   <c:import url="../common/scripts.jsp" />
   
   <script>
      $(function(){
         // 닉네임 중복 검사
         // ajax로 구현할 예정   
         $("#mpNickname").on("keyup", function(){
            var mpNickname = $(this).val().trim();
            
            if(mpNickname.length < 4) {
               $('.nick.error').hide();
               $(".guide.ok").hide();
               $('.nick.ok').hide();
               $('.guide.invalid').show();
            return;
            } else {
               
               console.log("작동 확인!");
            
               $.ajax({
                  url : "${pageContext.request.contextPath}/setting/checkNicknameDuplicate.do",
                  data : {mpNickname : mpNickname},
                  dataType : "json",
                  success : function(data){
                     // 참 / 거짓
                     console.log(data);
                     // if(data == true){ // stream 방식
                     if(data.isUsable == true){ // json 객체 전달 방식
                        $(".guide.error").hide();
                        $(".guide.invalid").hide();
                        $(".guide.ok").show();
                        $("#nickDuplicateCheck").val(1);
                     } else if(data.isUseble == false){
                        $(".guide.invalid").hide();
                        $(".guide.ok").hide();
                        $(".guide.error").show();
                        $("#nickDuplicateCheck").val(0);
                     } 
                     
                  }, error : function(req, status, error) {
                     console.log("닉네임 중복 체크 실패 !");
                     // 화면 에러 로그
                     console.log(req);
                     console.log(status);
                     console.log(error);
                  }
               });
            }
         });
      });
      
      function fn_enroll_validate(){
         var mpNickname = $('#mpNickname');
         var result = true;
         
         if(mpNickname.val().trim().length < 4 ) {
            alert("닉네임은 최소 4글자 이상이여야 합니다.");
            result = false;
         }
         
         // 닉네임 중복 여부 재검사
         // 구현 예정
         
         
         return result;
      }      
   </script>
   
   <!-- 지도 API ==================== -->
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fb6053eb2eec7d7a60c9e4f32d88d785&libraries=services"></script>
<script>

      
   

/* =========================================================================== */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(${mp.mpLatitude}, ${mp.mpLongitude}), // 지도의 중심좌표
    level: 1 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//geocoder.addressSearch('서울 강남구 강남대로 298 (역삼동, 푸르덴셜타워)', mapSearch);    

function mapSearch(result, status) {
	console.log("sssss" + ${mp.mpLatitude});
	console.log("sssss" + ${mp.mpLongitude});
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
      var latitude = result[0].y;
      var longitude = result[0].x;
      
      /* 주도 검색 후 좌표값 */
        console.log("위도 : "+latitude + ", 경도 : " + longitude);
      $("#latitude").val(latitude);
      $("#longitude").val(longitude);
      
      
        
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">내 위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
}

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

//지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
        detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
        
        var content = '<div class="bAddr">' +
                        '<span class="title">법정동 주소정보</span>' + 
                        detailAddr + 
                    '</div>';

        // 마커를 클릭한 위치에 표시합니다 
        marker.setPosition(mouseEvent.latLng);
        marker.setMap(map);

        // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
        infowindow.setContent(content);
        infowindow.open(map, marker);
    }   
});
});

//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
// 좌표로 행정동 주소 정보를 요청합니다
geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
// 좌표로 법정동 상세 주소 정보를 요청합니다
geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
if (status === kakao.maps.services.Status.OK) {
    var infoDiv = document.getElementById('centerAddr');

    for(var i = 0; i < result.length; i++) {
        // 행정동의 region_type 값은 'H' 이므로
        if (result[i].region_type === 'H') {
            infoDiv.innerHTML = result[i].address_name;
            break;
        }
    }
}    
}    
</script>


<script>
function addrSearch() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $('#zipCode').val(data.zonecode); //5자리 새우편번호 사용
            
            $('#address1').val(fullAddr);
            
            console.log(fullAddr);

            geocoder.addressSearch(fullAddr, mapSearch);
        }
    }).open();
};
</script>
    
  </body>
</html>